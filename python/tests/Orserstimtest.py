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

    gpio = Daq.GPIO(f)
    gpio.fpga.debug = True
    # configure the SPI debug MUXs
    gpio.spi_debug("dfast1")
    gpio.ads_misc("sdoa")  # do not care for this experiment

    # changing the length of trasnfer to 32-bit
    daq.DAC[0].set_ctrl_reg(0x3020)
    daq.DAC[0].filter_select(operation="clear")

    #STIM SETUP
    for x in range(len(STIM_SETUP)):
        daq.DAC[0].write(int(STIM_SETUP[x]))

    #Not needed most likely, system will defualt to host mode during host-driven writes
    daq.DAC[0].set_data_mux("host")

    #Signals loaded into daq.ddr object 
    daq.ddr.data_arrays[1] = cmd_signal
    daq.ddr.data_arrays[0] = cc_signal

    #DDR is loaded with waveforms
    daq.ddr.write_setup()
    data = np.ones(int(len(daq.ddr.data_arrays[0])*daq.ddr.parameters['channels']), dtype = np.uint32)

    #RUNNING THE GUI#
    electrodesStimming, polarities, pulseWidth, RecoveryVar, magnitude, SpeedVar = runGUI()

    finalSpeed = 100000/SpeedVar

    print("SpeedVar is: " + str(SpeedVar) + " and the finalSpeed is: " + str(finalSpeed))
    
    daq.DAC[0].set_spi_sclk_divide(int(finalSpeed))

    attributes = setAttributes(magnitude, electrodesStimming, polarities, RecoveryVar)

    #SETTING UP THE MAGNITUDES AND RATIOS OF STIMMING#
    for x in range(len(attributes)):
        daq.DAC[0].write(int(attributes[x], 16))

    commandStructure = make_command_structure(electrodesStimming, polarities, channelsToConvert, pulseWidth, RecoveryVar)
    
    #change dac_VAL_OUT
    for i in range (len(data)):
        data[i] = np.uint32(commandStructure[i%(len(commandStructure))])

    for x in commandStructure:
        print(hex(x))

    daq.ddr.write_buf(bytearray(data))

    #FIFOs reset
    daq.ddr.reset_mig_interface()
    daq.ddr.reset_fifo('ALL')

    # FIFOs restarted, data mux set to read from DDR
    bits = [daq.ddr.endpoints['ADC_WRITE_ENABLE'].bit_index_low,
            daq.ddr.endpoints['DAC_READ_ENABLE'].bit_index_low]
    daq.ddr.fpga.set_ep_simultaneous(daq.ddr.endpoints['ADC_WRITE_ENABLE'].address, bits, [1, 1])
    for i in range(6):
        daq.DAC[i].set_data_mux("DDR")
    

    daq.ddr.reset_mig_interface()
    daq.ddr.set_adc_dac_simultaneous()

    time.sleep(10)
    CHAN_UNDER_TEST = 0
    output = pd.DataFrame()
    data = {}
    file_name = 'test'
    data['filename'] = file_name
    output = output.append(data, ignore_index=True)

    print(output.head())
    output.to_csv(os.path.join(data_dir, file_name + '.csv'))
    idx = 0

    daq.ddr.parameters['adc_channels'] =4

    chan_data_one_repeat = daq.ddr.save_data(data_dir, file_name.format(idx) + '.h5', num_repeats = 4,
                          blk_multiples=40) # blk multiples multiple of 10

        # to get the deswizzled data of all repeats need to read the file
    _, chan_data = read_h5(data_dir, file_name=file_name.format(idx) + '.h5', chan_list=np.arange(1))

    
    # Long data sequence -- entire file 
    #adc_data, timestamp, dac_data, ads, ads_seq_cnt, read_errors = daq.ddr.data_to_names(chan_data)

    '''
    #Endless loop, waits for keyboard interrupt, will eventually fill data back from the miso line 
    while (True):
        try:
            d, bytes_read_error = daq.ddr.read_adc()
            print(d.dtype)
        except KeyboardInterrupt:
            emergencyInterrupt()
            '''
