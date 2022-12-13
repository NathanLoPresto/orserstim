"""
This code runs through host driven SPI
and DDR/FIFO driven SPI using the 
pyripherals python package and XEM7310
Abe Stroschein, ajstroschein@stthomas.edu
Lucas Koerner, koerner.lucas@stthomas.edu
Nathan LoPresto, lopr5624@stthomas.edu
"""
###IMPORTS###
from pyripherals.peripherals.DDR3 import DDR3
from pyripherals.core import FPGA, Endpoint
from pyripherals.utils import from_voltage
from ctypes import sizeof
import binascii
from time import sleep
import tkinter as tk
from window import *
import pandas as pd
import numpy as np
import datetime
import logging
import atexit
import time
import sys
import os

#Fills DDR with null commands, exits the python script
def emergencyInterrupt():
    daq.ddr.write_buf(bytearray(0x00000000))
    print("Executing emergency interrupt")
    exit()

#MAIN LOOP#
if __name__ == "__main__":
    createYaml() #Creates the .yaml file in the .pyripherals folder 


    #TODO: Are lines 40-61 necessary?
    # The boards.py file is located in the covg_fpga folder so we need to find that folder. If it is not above the current directory, the program fails.
    covg_fpga_path = os.getcwd()
    for i in range(15):
        if os.path.basename(covg_fpga_path) == "orserstim":
            boards_path = os.path.join(covg_fpga_path, "python")
            break
        else:
            # If we aren't in covg_fpga, move up a folder and check again
            boards_path = os.path.dirname(covg_fpga_path)
    sys.path.append(boards_path)

    eps = Endpoint.endpoints_from_defines

    #Directory only configured for windows
    data_dir_base = covg_fpga_path
    data_dir_covg = os.path.join(data_dir_base, 'covg/data/clamp/{}{:02d}{:02d}')

    today = datetime.datetime.today()
    data_dir = data_dir_covg.format(
        today.year, today.month, today.day
    )
    if not os.path.exists(data_dir):
        os.makedirs(data_dir)


    from analysis.adc_data import read_h5
    from analysis.utils import calc_fft
    from boards import Daq, Clamp

    # Initialize FPGA
    f = FPGA()
    f.init_device()
    sleep(2)
    f.send_trig(eps["GP"]["SYSTEM_RESET"])  # system reset

    #Initialize a daq object, containing DAC, DDR etc. objects
    daq = Daq(f)

    #TODO: Do I only need one DAC?
    # fast DACs -- only use to set SPI controller data source to DDR and disable filters
    for i in [0,1,2,3,4,5]:
        daq.DAC[i].filter_select(operation="clear")
        daq.DAC[i].set_data_mux("DDR")
        #daq.DAC[i].write_filter_coeffs()

    # --- Configure for DDR read to DAC80508 ---
    for dac_gp_ch in [0, 1]:
        daq.DAC_gp[dac_gp_ch].set_data_mux('DDR')

    ad7961s = daq.ADC
    ads = daq.ADC_gp # ADS8686
    ad7961s[0].reset_wire(1)

    gpio = Daq.GPIO(f)
    gpio.fpga.debug = True
    # configure the SPI debug MUXs
    gpio.spi_debug("dfast1")
    gpio.ads_misc("sdoa")  # do not care for this experiment

    for chan in [0,1,2,3]:
        ad7961s[chan].power_up_adc()  # standard sampling

    time.sleep(0.1)
    ad7961s[0].reset_wire(0)
    time.sleep(1)

    # changing the length of transfer to 32-bit
    daq.DAC[0].set_ctrl_reg(0x3020)
    daq.DAC[0].filter_select(operation="clear")

    #TODO: reimplement this with the stim setup commands
    '''
    #STIM SETUP
    for x in range(len(STIM_SETUP)):
        daq.DAC[0].write(int(STIM_SETUP[x]))
 
    #Not needed most likely, system will defualt to host mode during host-driven writes
    daq.DAC[0].set_data_mux("host")
    '''

    #DDR is loaded with waveforms
    daq.ddr.write_setup(data_driven_clock=False)

    #RUNNING THE GUI#
    electrodesStimming, polarities, pulseWidth, RecoveryVar, magnitude, SpeedVar = runGUI()

    finalSpeed = 100000/SpeedVar

    print("SpeedVar is: " + str(SpeedVar) + " and the finalSpeed is: " + str(finalSpeed))
    
    #try decimal 8/10, this will eventually be taken from SpeedVar
    daq.DAC[0].set_spi_sclk_divide(50)

    attributes = setAttributes(magnitude, electrodesStimming, polarities, RecoveryVar)
    '''
    #SETTING UP THE MAGNITUDES AND RATIOS OF STIMMING#
    for x in range(len(attributes)):
        daq.DAC[0].write(int(attributes[x], 16))
    '''

    #Keep this for when host-driven setup is written
    for i in range(6):
        daq.DAC[i].set_data_mux("DDR")

    #numpy.tile used?
    #split into 16 bits each, tile into data arrays 1 and data arrays 0

    #commandStructure = make_command_structure(electrodesStimming, polarities, channelsToConvert, pulseWidth, RecoveryVar)

    #TODO: add a function to split command structure into 16- bit increments, and write to daq.data arrays
    #newCommandStructure = np.tile(commandStructure,len(daq.ddr.data_arrays)//len(commandStructure) )
    #extraCommands = len(daq.ddr.data_arrays[0])-len(newCommandStructure)
    
    daq.ddr.data_arrays[1] = np.ones(int(len(daq.ddr.data_arrays[0])), dtype = np.uint16) * 0xc0fb
    daq.ddr.data_arrays[0] = np.ones(int(len(daq.ddr.data_arrays[0])), dtype = np.uint16) * 0x0000

    #TODO: Check if this needs to be cycled through
    for i in [0,1,2,3,4,5]:
        daq.DAC[i].filter_select(operation="clear")
        daq.DAC[i].set_data_mux("DDR")
        #daq.DAC[i].write_filter_coeffs()

    # --- Configure for DDR read to DAC80508 ---
    for dac_gp_ch in [0, 1]:
        daq.DAC_gp[dac_gp_ch].set_data_mux('DDR')


    #Writing to the channels
    daq.ddr.set_adcs_connected()
    daq.ddr.clear_dac_read()
    daq.ddr.clear_adc_write()
    daq.ddr.reset_fifo(name='ALL')
    daq.ddr.reset_mig_interface()

    daq.ddr.write_channels(set_ddr_read=False)

    #FIFOs reset
    daq.ddr.reset_mig_interface()
    daq.ddr.set_adc_dac_simultaneous() 

#TODO: Change this into sample(), a single snapshot of the miso results, updating the plot and data
def run_test(repeat=False, num_repeats=8, blk_multiples=40, PLT=False, KEEP_DAC_GOING=False):

    if repeat:  # to repeat data capture without rewriting the DAC data
        
        # stop access to the FIFOs so that after reset of the FIFO(s) no new data is added/extracted
        daq.ddr.clear_adc_read()
        daq.ddr.clear_adc_write()
        daq.ddr.clear_dac_read()

        if not KEEP_DAC_GOING:
            daq.ddr.reset_fifo(name='ALL')

        elif KEEP_DAC_GOING:
            # alternatively to keep DAC data running only reset ADC fifos 
            # (but mismatches of DAC written / read will fail)
            daq.ddr.reset_fifo(name='ADC_IN')
            daq.ddr.reset_fifo(name='ADC_TRANSFER')

        daq.ddr.reset_mig_interface()  # self.fpga.send_trig(self.endpoints['UI_RESET'])

        daq.ddr.set_adc_dac_simultaneous()  # note that the MIG interface addresses are driven by the FIFOs so will idle 
                            # until the FIFOs are reenable with ddr_write_finish()
        time.sleep(0.01)

    #TODO: take out the file-oriented nature of runtest
    file_name = 'test'
    idx = 0

    # saves data to a file; returns to the workspace the deswizzled DDR data of the last repeat
    # ddr.save_data calls:   set_adc_read()  # enable data into the ADC reading FIFO

    daq.ddr.parameters= {"data_version": daq.ddr.data_version}

    chan_data_one_repeat = daq.ddr.save_data(data_dir, file_name.format(idx) + '.h5', num_repeats = num_repeats,
                            blk_multiples=blk_multiples) # blk multiples must be a multiple of 10

    # to get the deswizzled data of all repeats need to read the file
    _, chan_data = read_h5(data_dir, file_name=file_name.format(idx) + '.h5', chan_list=np.arange(8))

    # Long data sequence read back entire file 
    adc_data, timestamp, dac_data, ads, ads_seq_cnt, reading_error = daq.ddr.data_to_names(chan_data)

    return chan_data, adc_data, dac_data, timestamp

chan_data, adc_data, dac_data, timestamp = run_test(num_repeats = 8, PLT=True)
time.sleep(1)
chan_data, adc_data, dac_data, timestamp = run_test(num_repeats = 8, PLT=True)
time.sleep(1)
chan_data, adc_data, dac_data, timestamp = run_test(num_repeats = 8, PLT=True)


#adc_data[0] + (adc_data[1] <<16)

while (1):
    time.sleep(.5)
    print(f.read_wire(0x2a))
    print(f.read_wire(0x2b))
    print(f.read_wire(0x2c))






