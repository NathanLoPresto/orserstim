"""
This code runs through host driven SPI
and DDR/FIFO driven SPI using the 
pyripherals python package and XEM7310
Abe Stroschein, ajstroschein@stthomas.edu
Lucas Koerner, koerner.lucas@stthomas.edu
Nathan LoPresto, lopr5624@stthomas.edu
"""

#TODO
#To run this script, config.yaml has to be properly set up
#Follow pyripherals directions for correct implementation

#Read "install" section in covg_fpga for pyripherals install directions
from pyripherals.peripherals.DDR3 import DDR3
from pyripherals.core import FPGA, Endpoint
from pyripherals.utils import from_voltage

#"pip install" imports
from ctypes import sizeof
from time import sleep
import pandas as pd
import numpy as np
import datetime
import logging
import atexit
import time
import sys
import os

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

#local imports
from boards import Daq, Clamp
from analysis.adc_data import read_h5
from analysis.utils import calc_fft

# constants 
FS = 5e6  # sampling frequency 
dac80508_offset = 0x8000

eps = Endpoint.endpoints_from_defines

#Directory only configured for windows
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

#Host-driven writes
for x in range(20):
    daq.DAC[0].write(int(0x11223344))

#Not needed most likely, system will defualt to host mode during host-driven writes
daq.DAC[0].set_data_mux("host")

#TODO: Add relevant spi commands into command block
dac_offset = 0x1e00

#Instance variable of ddr, set with cmd and cc signals
cmd_signal = 212
cc_signal = np.ones(4194304, dtype=np.uint16) * dac_offset

#Signals loaded into daq.ddr object 
daq.ddr.data_arrays[1] = cmd_signal
daq.ddr.data_arrays[0] = cc_signal

#DDR is loaded with waveforms
daq.ddr.write_setup()
block_pipe_return, speed_MBs = daq.ddr.write_channels(set_ddr_read=False)

#FIFOs reset
daq.ddr.reset_mig_interface()
daq.ddr.reset_fifo('ALL')

# FIFOs restarted, data mux set to read from DDR
bits = [daq.ddr.endpoints['ADC_WRITE_ENABLE'].bit_index_low,
        daq.ddr.endpoints['DAC_READ_ENABLE'].bit_index_low]
daq.ddr.fpga.set_ep_simultaneous(daq.ddr.endpoints['ADC_WRITE_ENABLE'].address, bits, [1, 1])
for i in range(6):
    daq.DAC[i].set_data_mux("DDR")
