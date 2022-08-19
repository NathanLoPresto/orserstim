"""
This code demonstrates DDR reading and writing. 
Works in a mode with two DDR input buffers and two DDR output buffers. 
Data loaded into DDR for playback (port 1):
* AD5453 DAC and DAC80508 
Data buffered into and then read from DDR (port 2):
 * AD7961 @ 5 MSPS
 * output data to DAC AD5453 (allows for filter tests) @ 2.5 MSPS
 * ADS8686 data @ 1 MSPS
 * Timestamp (clock at 200 MHz)
Abe Stroschein, ajstroschein@stthomas.edu
Lucas Koerner, koerner.lucas@stthomas.edu
"""

import os
import sys
import logging
from pyripherals.core import FPGA, Endpoint
from pyripherals.peripherals.DDR3 import DDR3
from pyripherals.utils import from_voltage
from time import sleep
import datetime
import time
import atexit
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd


# The boards.py file is located in the covg_fpga folder so we need to find that folder. If it is not above the current directory, the program fails.
covg_fpga_path = os.getcwd()
for i in range(15):
    if os.path.basename(covg_fpga_path) == "orserstim":
        boards_path = os.path.join(covg_fpga_path, "python")
        break
    else:
        # If we aren't in covg_fpga, move up a folder and check again
        covg_fpga_path = os.path.dirname(covg_fpga_path)
sys.path.append(boards_path)


from boards import Daq, Clamp
from analysis.adc_data import read_h5
from analysis.utils import calc_fft


# constants 
FS = 5e6  # sampling frequency 
dac80508_offset = 0x8000


eps = Endpoint.endpoints_from_defines

data_dir_base = covg_fpga_path
if sys.platform == "linux" or sys.platform == "linux2":
    print('Linux directory not configured... Error')
    pass
elif sys.platform == "darwin":
    print('MAC directory not configured... Error')
    pass
elif sys.platform == "win32":
    data_dir_covg = os.path.join(data_dir_base, 'covg/data/clamp/{}{:02d}{:02d}')

today = datetime.datetime.today()
data_dir = data_dir_covg.format(
    today.year, today.month, today.day
)
if not os.path.exists(data_dir):
    os.makedirs(data_dir)


# Initialize FPGA
f = FPGA()
f.init_device()
sleep(2)
f.send_trig(eps["GP"]["SYSTEM_RESET"])  # system reset

daq = Daq(f)

gpio = Daq.GPIO(f)
gpio.fpga.debug = True
# configure the SPI debug MUXs
gpio.spi_debug("dfast1")
gpio.ads_misc("sdoa")  # do not care for this experiment


# fast DAC channel 0 and 1
for i in [0]:
    daq.DAC[i].set_ctrl_reg(daq.DAC[i].master_config)
    daq.DAC[i].set_spi_sclk_divide()
    #daq.DAC[i].filter_select(operation="set")
    daq.DAC[i].filter_select(operation="clear")

    #test value
    daq.DAC[i].write(int(0x11223344))

    #daq.DAC[i].set_data_mux("DDR")
    daq.DAC[i].set_data_mux("host")

# daq.DAC[0].set_clk_divider(divide_value=0x50) #TODO: this is no longer used. All timing is from one module

ddr = DDR3(f, data_version='TIMESTAMPS')

FAST_DAC_FREQ = 7e3
for i in range(7):
    ddr.data_arrays[i], fdac_freq = ddr.make_sine_wave(0x800, FAST_DAC_FREQ,
                                        offset=0x1000)


ddr.write_setup()
block_pipe_return, speed_MBs = ddr.write_channels(set_ddr_read=False)
ddr.reset_mig_interface()
ddr.write_finish()

REPEAT = False
if REPEAT:  # to repeat data capture without rewriting the DAC data
    ddr.clear_adc_read()
    ddr.clear_adc_write()
    ddr.clear_dac_write()

    ddr.reset_fifo(name='ALL')
    # ddr.reset_fifo(name='ADC_TRANSFER')
    ddr.reset_mig_interface()

    ddr.write_finish()
    time.sleep(0.01)

file_name = "test"
idx =0

# saves data to a file; returns to teh workspace the deswizzled DDR data of the last repeat
chan_data_one_repeat = ddr.save_data(data_dir, file_name.format(idx) + '.h5', num_repeats = 8,
                          blk_multiples=40) # blk multiples multiple of 10

# to get the deswizzled data of all repeats need to read the file
_, chan_data = read_h5(data_dir, file_name=file_name.format(idx) + '.h5', chan_list=np.arange(8))

# Long data sequence -- entire file 
adc_data, timestamp, dac_data, ads, ads_seq_cnt, read_errors = ddr.data_to_names(
    chan_data)

# Shorter data sequence, just one of the repeats
# adc_data, timestamp, dac_data, ads, ads_seq_cnt, read_errors = ddr.data_to_names(chan_data_one_repeat)

t = np.arange(0,len(adc_data[0]))*1/FS

crop_start = 0 # placeholder in case the first bits of DDR data are unrealiable. Doesn't seem to be the case.
print(f'Timestamp spans {5e-9*(timestamp[-1] - timestamp[0])*1000} [ms]')

# DACs 
t_dacs = t[crop_start::2]  # fast DACs are saved every other 5 MSPS tick
#for dac_ch in range(4):
for dac_ch in [0]:
    fig,ax=plt.subplots()
    y = dac_data[dac_ch][crop_start:]
    lbl = f'Ch{dac_ch}'
    ax.plot(t_dacs*1e6, y, marker = '+', label = lbl)
    print(f'Min {np.min(y[2:])}, Max {np.max(y)}') # skip the first 2 readings which are 0
    ax.legend()
    ax.set_title('Fast DAC data')
    ax.set_xlabel('s [us]')
