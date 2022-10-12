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


def emergencyInterrupt():
    daq.ddr.write_buf(bytearray(0x00000000))
    print("Executing emergency interrupt")
    exit()

#MAIN LOOP#
if __name__ == "__main__":
    createYaml()
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

    print(STIM_SETUP)
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
    electrodesStimming, polarities, pulseWidth, RecoveryVar, magnitude = runGUI()

    attributes = setAttributes(magnitude, electrodesStimming, polarities, RecoveryVar)

    print(attributes)
    #SETTING UP THE MAGNITUDES AND RATIOS OF STIMMING#
    for x in range(len(attributes)):
        daq.DAC[0].write(int(attributes[x], 16))

    commandStructure = make_command_structure(electrodesStimming, polarities, channelsToConvert, pulseWidth, RecoveryVar)
    #change dac_VAL_OUT
    for i in range (len(data)):
        data[i] = np.uint32(commandStructure[i%(len(commandStructure))])

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
    
    while (True):
        try:
            time.sleep(5)
            print("running")
        except KeyboardInterrupt:
            emergencyInterrupt()
