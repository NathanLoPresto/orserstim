"""This script attempts to replicate Figure 4 on the biophysical poster. This
consists of measuring the membrane current (Im) with the AD7961 after
supplying a step voltage of 0-50mV by the AD5453. This is repeated for
feedback resistors of 10K, 33K, 100K, 332K, and 3000K. The membrane current
(Im) is graphed against time with all of these responses together.

Biophysical poster: https://uofstthomasmn.sharepoint.com/:b:/r/sites/COVGsummer2022/Shared%20Documents/biophysical_2022_poster_covg_v1.pdf?csf=1&web=1&e=gbUPQi

June 2022

Abe Stroschein, ajstroschein@stthomas.edu
Lucas Koerner, koerner.lucas@stthomas.edu
"""

from math import ceil
import os
import sys
from time import sleep
import datetime
import time
import atexit
import numpy as np
import matplotlib.pyplot as plt
import pickle as pkl
import copy
from pyripherals.utils import to_voltage, from_voltage, create_filter_coefficients
from pyripherals.core import FPGA, Endpoint
from pyripherals.peripherals.DDR3 import DDR3

# The boards.py file is located in the covg_fpga folder so we need to find that folder. If it is not above the current directory, the program fails.
covg_fpga_path = os.getcwd()
for i in range(15):
    if os.path.basename(covg_fpga_path) == "covg_fpga":
        boards_path = os.path.join(covg_fpga_path, "python")
        break
    else:
        # If we aren't in covg_fpga, move up a folder and check again
        covg_fpga_path = os.path.dirname(covg_fpga_path)
sys.path.append(boards_path)


from analysis.clamp_data import adjust_step2
from analysis.adc_data import read_h5, separate_ads_sequence
from filters.filter_tools import butter_lowpass_filter, delayseq_interp
from instruments.power_supply import open_rigol_supply, pwr_off, config_supply
from boards import Daq, Clamp


def get_cc_optimize(nums):

    data_dir_base = os.path.expanduser('~')
    data_dir_covg = os.path.join(
        data_dir_base, 'Documents/covg/data/clamp/{}{:02d}{:02d}')
    data_dir = data_dir_covg.format(2022, 1, 19)

    #for nums in ([20,21], [30,31], [14,15], [40,41]):
    with open(os.path.join(data_dir, 'basin_hop_cc_nums{}.pickle'.format(nums[0])), 'rb') as fp:
        out = pkl.load(fp)
    return out


def make_cmd_cc(cmd_val=0x1d00, cc_scale=0.351, cc_delay=0, fc=4.8e3, step_len=8000,
               cc_val=None, cc_pickle_num=None):
    """Return the CMD and CC signals determined by the parameters.
    
    Parameters
    ----------
    
    Returns
    -------
    np.ndarray, np.ndarray : the CMD signal data, the CC signal data.
    """

    # TODO: move to Clamp board class in boards.py
    dac_offset = 0x2000

    cmd_signal = ddr.make_step(
        low=dac_offset - int(cmd_val), high=dac_offset + int(cmd_val), length=step_len)  # 1.6 ms between edges

    # create the cc using multiple methods
    if cc_pickle_num is not None:
        cc_impulse_scale = -2600/7424
        out = get_cc_optimize(cc_pickle_num)
        cc_wave = adjust_step2(
            out['x'], cmd_signal.astype(np.int32) - dac_offset)
        cc_wave = cc_wave * cc_impulse_scale
        cc_wave = cc_wave + dac_offset
        if cc_delay != 0:
            # 2.5e6 is the sampling rate
            cc_wave = delayseq_interp(cc_wave, cc_delay, 2.5e6)
        cc_signal = cc_wave.astype(np.uint16)

    elif cc_val is None:  # get the cc signal from scaling the cmd signal
        if fc is not None:
            cc_signal = butter_lowpass_filter(
                cmd_signal - dac_offset, cutoff=fc, fs=2.5e6, order=1)*cc_scale + dac_offset
        else:
            cc_signal = (
                cmd_signal - dac_offset)*cc_scale + dac_offset
        if cc_delay != 0:
            cc_signal = delayseq_interp(
                cc_signal, cc_delay, 2.5e6)  # 2.5e6 is the sampling rate

    else:  # needed so that the cmd signal can be zero with a non-zero cc signal
        cc_signal = ddr.make_step(low=dac_offset - int(cc_val),
                                               high=dac_offset + int(cc_val),
                                               length=step_len)  # 1.6 ms between edges
        if fc is not None:
            cc_signal = butter_lowpass_filter(
                cc_signal, cutoff=fc, fs=2.5e6, order=1)
        if cc_delay != 0:
            cc_signal = delayseq_interp(
                cc_signal, cc_delay, 2.5e6)  # 2.5e6 is the sampling rate

    return cmd_signal, cc_signal


def set_cmd_cc(dc_nums, cmd_val=0x1d00, cc_scale=0.351, cc_delay=0, fc=4.8e3, step_len=8000,
               cc_val=None, cc_pickle_num=None):
    """Write the CMD and CC signals to the DDR for the specified daughtercards.
    
    Parameters
    ----------
    dc_nums : int or list
        The port number(s) of the daughtercard(s) to write signals for.

    Returns
    -------
    None
    """

    # TODO: move to Clamp board class in boards.py
    if (type(dc_nums) == int):
        dc_nums = [dc_nums]
    elif (type(dc_nums) != list):
        raise TypeError('dc_nums must be int or list')

    for dc_num in dc_nums:
        cmd_ch = dc_num * 2 + 1
        cc_ch = dc_num * 2
        ddr.data_arrays[cmd_ch], ddr.data_arrays[cc_ch] = make_cmd_cc(cmd_val=cmd_val, cc_scale=cc_scale, cc_delay=cc_delay, fc=fc, step_len=step_len, cc_val=cc_val, cc_pickle_num=cc_pickle_num)
    
    # write channels to the DDR
    ddr.write_setup()
    # clear read, set write, etc. handled within write_channels
    block_pipe_return, speed_MBs = ddr.write_channels(set_ddr_read=False)
    ddr.reset_mig_interface()
    ddr.write_finish()

FS = 5e6
SAMPLE_PERIOD = 1/FS
DC_NUMS = [0, 1, 2, 3]  # list of the Daughter-card channels under test. Order on board from L to R: 1,0,2,3

eps = Endpoint.endpoints_from_defines
pwr_setup = "3dual"

# TODO: at data directories like this to a config file
data_dir_base = os.path.expanduser('~')
if sys.platform == "linux" or sys.platform == "linux2":
    pass
elif sys.platform == "darwin":
    data_dir_covg = "/Users/koer2434/My Drive/UST/research/covg/fpga_and_measurements/daq_v2/data/clamp_test/{}{:02d}{:02d}"
elif sys.platform == "win32":
    if os.path.exists('C:/Users/ajstr/OneDrive - University of St. Thomas/Research Internship/clamp_step_response_data'):
        data_dir_covg = 'C:/Users/ajstr/OneDrive - University of St. Thomas/Research Internship/clamp_step_response_data/{}{:02d}{:02d}'
    else:
        data_dir_covg = os.path.join(data_dir_base, 'Documents/covg/data/clamp/{}{:02d}{:02d}')

today = datetime.datetime.today()
data_dir = data_dir_covg.format(
    today.year, today.month, today.day
)
if not os.path.exists(data_dir):
    os.makedirs(data_dir)


# -------- power supplies -----------
dc_pwr, dc_pwr2 = open_rigol_supply(setup=pwr_setup)
if pwr_setup == "3dual":
    atexit.register(pwr_off, [dc_pwr])
else:
    atexit.register(pwr_off, [dc_pwr, dc_pwr2])
config_supply(dc_pwr, dc_pwr2, setup=pwr_setup, neg=15)

# turn on the 7V
dc_pwr.set("out_state", "ON", configs={"chan": 1})
dc_pwr.set('i', 0.70, configs={'chan': 1})

if pwr_setup != "3dual":
    # turn on the +/-16.5 V input
    for ch in [1, 2]:
        dc_pwr2.set("out_state", "ON", configs={"chan": ch})
elif pwr_setup == "3dual":
    # turn on the +/-16.5 V input
    for ch in [2, 3]:
        dc_pwr.set("out_state", "ON", configs={"chan": ch})


# Initialize FPGA
f = FPGA()
f.init_device()
sleep(2)
f.send_trig(eps["GP"]["SYSTEM_RESET"])  # system reset

pwr = Daq.Power(f)
pwr.all_off()  # disable all power enables

daq = Daq(f)
ddr = daq.ddr    # Or reference as daq.ddr throughout the file
ddr.parameters['data_version'] = 'TIMESTAMPS'
ad7961s = daq.ADC
ad7961s[0].reset_wire(1)    # Only actually one WIRE_RESET for all AD7961s

ads = daq.ADC_gp

# power supply turn on via FPGA enables
for name in ["1V8", "5V", "3V3"]:
    pwr.supply_on(name)
    sleep(0.05)

# configure the SPI debug MUXs
gpio = Daq.GPIO(f)
gpio.spi_debug("ads")
gpio.ads_misc("convst")  # do not care for this experiment

# instantiate the Clamp board providing a daughter card number (from 0 to 3)
clamps = [None] * 4
for dc_num in DC_NUMS:
    clamp = Clamp(f, dc_num=dc_num)
    print(f'Clamp {dc_num} Init'.center(35, '-'))
    clamp.init_board()
    clamp.DAC.write(data=from_voltage(voltage=0.9940/1.6662, num_bits=10, voltage_range=5, with_negatives=False))
    clamps[dc_num] = clamp

# -------- configure the ADS8686
ads.hw_reset(val=False)
ads.set_host_mode()
ads.setup()
ads.set_range(5)
ads.set_lpf(376)
# 4B - clear sine wave set by the Slow DAC
ads_sequencer_setup = [('0', '0'), ('1', '1'), ('2','2')]
codes = ads.setup_sequencer(chan_list=ads_sequencer_setup)
ads.write_reg_bridge(clk_div=200) 
ads.set_fpga_mode()

# TODO: are the TCA pins already configured in Clamp.configure_clamp()?
daq.TCA[0].configure_pins([0, 0])
daq.TCA[1].configure_pins([0, 0])

# fast DAC channels setup
for i in range(6):
    daq.DAC[i].set_ctrl_reg(daq.DAC[i].master_config)
    daq.DAC[i].set_spi_sclk_divide()
    daq.DAC[i].filter_select(operation="clear")
    daq.DAC[i].write(int(0))
    daq.DAC[i].set_data_mux("DDR")
    daq.DAC[i].change_filter_coeff(target="passthru")
    daq.DAC[i].write_filter_coeffs()
    daq.set_dac_gain(i, 5)  # 5V to see easier on oscilloscope

# configure clamp board Utility pin to be the offset voltage for the feedback
# at this point the slow DA Ccan be set by the host 
for i in range(2):
    # Reset the Wishbone controller and SPI core
    daq.DAC_gp[i].set_ctrl_reg(daq.DAC_gp[i].master_config)
    daq.DAC_gp[i].set_spi_sclk_divide()
    daq.DAC_gp[i].filter_select(operation="clear")
    daq.DAC_gp[i].set_data_mux("host")
    daq.DAC_gp[i].set_config_bin(0x00)
    print('Outputs powered on')
    daq.DAC_gp[i].set_data_mux("DDR")

# --------  Enable fast ADCs  --------
for chan in [0, 1, 2, 3]:
    ad7961s[chan].power_up_adc()  # standard sampling
time.sleep(0.1)
ad7961s[0].reset_wire(0)    # Only actually one WIRE_RESET for all AD7961s
time.sleep(1)
ad7961s[0].reset_trig() # this IS required because it resets the timing generator of the ADS8686. Make sure to configure the ADS8686 before this reset

# ------ Collect Data --------------
file_name = time.strftime("%Y%m%d-%H%M%S")
idx = 0

# --- Write to the DDR ---
# [0:13]    FDAC_1 [14:15] ADDR SDAC_1
# [16:29]   FDAC_2 [31:32] ADDR SDAC_1 and SDAC_2
# [32:45]   FDAC_3 [46:47] ADDR SDAC_2
# [48:61]   FDAC_4 [62:63] 0's
# [64:77]   FDAC_5 [78:79] 0's
# [80:93]   FDAC_6 [94:95] 0's
# [96:111]  SDAC_1
# [112:127] SDAC_2

sdac_1_out_chan = 0
sdac_2_out_chan = 0  # Do not care
fdac_amp_volt = 1
sdac_amp_volt = 1
target_freq = 1e3

# TODO: figure out what the voltage range should be for fdac, 3.3 is just a guess
fdac_amp_code = from_voltage(voltage=fdac_amp_volt, num_bits=14, voltage_range=3.3, with_negatives=False)
sdac_amp_code = from_voltage(voltage=sdac_amp_volt, num_bits=16, voltage_range=2.5, with_negatives=False)

# Data for the 6 AD5453 "Fast DACs"
fdac_sine, fdac_freq = ddr.make_sine_wave(amplitude=0, frequency=target_freq)

# Data for the 2 DAC80508 "Slow DACs"
dac80508_offset = 0x8000

WAVE='SINE'

if WAVE=='SINE':
    sdac_sine, sdac_freq = ddr.make_sine_wave(amplitude=sdac_amp_code, frequency=1e3, offset=dac80508_offset)
elif WAVE=='SQ':
    sdac_sine = ddr.make_step(low=dac80508_offset-0x1000,  high=dac80508_offset+0x1000, length = int(2.5e6/10e3))

# Clear channel bits
fdac_sine = np.bitwise_and(fdac_sine, 0x3fff)

# Load data into DDR
# Set channel bits
ddr.data_arrays[0] = np.bitwise_or(fdac_sine, (sdac_1_out_chan & 0b110) << 13)
ddr.data_arrays[1] = np.bitwise_or(fdac_sine, (sdac_1_out_chan & 0b001) << 14)
ddr.data_arrays[2] = np.bitwise_or(fdac_sine, (sdac_2_out_chan & 0b110) << 13)
ddr.data_arrays[3] = np.bitwise_or(fdac_sine, (sdac_2_out_chan & 0b001) << 14)
for i in range(2):
    ddr.data_arrays[i + 4] = fdac_sine
for i in range(2):
    ddr.data_arrays[i + 6] = sdac_sine

daq.set_isel(port=1, channels=None)
daq.set_isel(port=2, channels=None)

res = 100 # in kOhm

print('Configuring for oscilloscope: CCOMP=47, RF1=2.1, ADG_RES=100')
# Configure for better oscilloscope viewing
for dc_num in DC_NUMS:
    log_info, config_dict = clamps[dc_num].configure_clamp(
        ADC_SEL="CAL_SIG2",
        #ADC_SEL="CAL_SIG12,
        DAC_SEL="drive_CAL2",
        #DAC_SEL="gnd_Both",
        CCOMP=47,
        RF1=2.1,  # feedback circuit
        ADG_RES=res,
        PClamp_CTRL=0, # keep open (not passive clamp)
        P1_E_CTRL=0, #open 
        P1_CAL_CTRL=1, #close for cal
        P2_E_CTRL=1, #open
        P2_CAL_CTRL=1, #close for cal
        gain=1,  # instrumentation amplifier
        FDBK=1,
        mode="voltage",
        EN_ipump=0,
        RF_1_Out=1,
        addr_pins_1=0b110,
        addr_pins_2=0b000,
    )

# write channels to the DDR
ddr.write_setup()
# clear read, set write, etc. handled within write_channels
block_pipe_return, speed_MBs = ddr.write_channels(set_ddr_read=False)
ddr.reset_mig_interface()
ddr.write_finish()


for i in range(1):  # loop to allow for ensuring that the ADS data stays consistent
    ddr.repeat_setup()
    # Get data
    # saves data to a file; returns to the workspace the deswizzled DDR data of the last repeat
    chan_data_one_repeat = ddr.save_data(data_dir, file_name.format(idx) + '.h5', num_repeats=8,
                                        blk_multiples=40)  # blk multiples multiple of 10

    # to get the deswizzled data of all repeats need to read the file
    _, chan_data = read_h5(data_dir, file_name=file_name.format(
        idx) + '.h5', chan_list=np.arange(8))

    # Long data sequence -- entire file
    adc_data, timestamp, dac_data, ads_data, ads_seq_cnt, read_errors = ddr.data_to_names(chan_data)

    for dc_num in DC_NUMS:
        adc_data[dc_num] = np.array(to_voltage(
            adc_data[dc_num], num_bits=16, voltage_range=10, use_twos_comp=True))
        
    for letter in ['A', 'B']:
        ads_data[letter] = np.array(to_voltage(
            ads_data[letter], num_bits=16, voltage_range=5, use_twos_comp=False))

    total_seq_cnt = np.zeros(len(ads_seq_cnt[0]) + len(ads_seq_cnt[1])) # get the right length
    total_seq_cnt[::2] = ads_seq_cnt[0]
    total_seq_cnt[1::2] = ads_seq_cnt[1]
    ads_separate_data = separate_ads_sequence(ads_sequencer_setup, ads_data, total_seq_cnt)

    fig, ax = plt.subplots(2,1)
    # Time in seconds
    t = np.arange(0, len(adc_data[0]))*1/FS

    tsub = t[::(5*len(ads_sequencer_setup))]
    y = ads_separate_data['A'][0]
    tsub = tsub[0:len(y)]
    ax[0].plot(tsub * 1e6, y, marker='.', color='r') 
    ax[0].set_ylabel('CAL_ADC')
    ax[0].set_xlabel('t [$\mu$s]')

    tsub = t[::(5*len(ads_sequencer_setup))]
    y = ads_separate_data['A'][1] / (1+2.1/3.1)
    tsub=tsub[0:len(y)]
    ax[1].plot(tsub * 1e6, y, marker='.', color='g')
    ax[1].set_ylabel('AMP_OUT')
    ax[1].set_xlabel('t [$\mu$s]')


    fig, ax = plt.subplots()
    # Time in seconds
    t = np.arange(0, len(adc_data[0]))*1/FS

    tsub = t[::(5*len(ads_sequencer_setup))]
    y = ads_separate_data['A'][0]
    tsub = tsub[0:len(y)]
    ax.plot(tsub * 1e6, y, marker='.', color='r') 
    ax.set_ylabel('CAL_ADC')
    ax.set_xlabel('t [$\mu$s]')

    tsub = t[::(5*len(ads_sequencer_setup))]
    y = ads_separate_data['A'][1] / (1+2.1/3.1)
    tsub=tsub[0:len(y)]
    ax.plot(tsub * 1e6, y, marker='.', color='g')
    ax.set_ylabel('AMP_OUT')
    ax.set_xlabel('t [$\mu$s]')