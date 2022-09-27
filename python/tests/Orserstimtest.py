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
from window import *
import tkinter as tk


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

#MAIN LOOP#
if __name__ == "__main__":
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
    for x in range(len(STIM_SETUP)):
        daq.DAC[0].write(int(STIM_SETUP[x]))

    #Not needed most likely, system will defualt to host mode during host-driven writes
    daq.DAC[0].set_data_mux("host")

    #TODO: Add relevant spi commands into command block
    dac_offset = 0x1e00

    #Instance variable of ddr, set with cmd and cc signals
    cmd_signal = 212
    cc_signal = np.ones(4194304, dtype=np.uint32) * dac_offset

    #Signals loaded into daq.ddr object 
    daq.ddr.data_arrays[1] = cmd_signal
    daq.ddr.data_arrays[0] = cc_signal

    #DDR is loaded with waveforms
    daq.ddr.write_setup()
    data = np.ones(int(len(daq.ddr.data_arrays[0])*daq.ddr.parameters['channels']), dtype = np.uint32)


    ###THIS IS WHERE THE GUI STUFF WILL GO###
    dataPointsToShow = 1000          # The Amount of data points to show in the graphing window
    
    top = tk.Tk()                                       # Initialize the TKinter APP
    top.title("Intan Sense/Stim Initialization window") # Setting the title of the tk app
    top.geometry("1200x650")                            # Setting the geometry in pixels (make this hierarchical later)
    
    #Arrays and data types to hold GUI variables and attributes
    CheckVars, StimVars, PosVars, MagWidget, Buttons, StimButtons, PosButtons, MagVars = [0]*16, [0]*16, [0]*16, [0]*16, [0]*16, [0]*16, [0]*16, [0]*16
    electrodesSampled, electrodesStimming, polarities = [0], [0], [0]
    PulseVar = tk.StringVar()
    MagVars = tk.StringVar()
    RecoveryVar = tk.StringVar()
    lowVar = tk.IntVar()
    for x in range(16):
        CheckVars[x] = tk.IntVar()
    for x in range(16):
        StimVars[x] = tk.IntVar()
    for x in range(16):
        PosVars[x]  = tk.IntVar()
    
    
    #Packing and initializing the elements in the TK app
    frame = tk.LabelFrame(top, text = "Select your electrodes to sample/plot", padx = 20, pady = 20)
    frame.pack(pady =20, padx = 10, side = "left")
    
    for x in range(16):
        Buttons[x] = tk.Checkbutton(frame, text = ("Electrode " + str(x)), variable = CheckVars[x], onvalue =1, offvalue =0, height =1, width =20, anchor = "w").pack()   

    frame2 = tk.LabelFrame(top, text = "Select your anodic electrodes", padx = 20, pady = 20)
    frame2.pack(pady =20, padx = 10, side = "left")
    
    for x in range(16):
        StimButtons[x] = tk.Checkbutton(frame2, text = ("Electrode " + str(x)), variable = StimVars[x], onvalue =1, offvalue =0, height =1, width =20, anchor = "w").pack()
    
    frame4 = tk.LabelFrame(top, text = "Select your cathodic electrodes", padx = 20, pady = 20)
    frame4.pack(pady =20, padx = 10, side = "left")
    
    for x in range(16):
        PosButtons[x] = tk.Checkbutton(frame4, text = ("Electrode " + str(x)), variable = PosVars[x], onvalue =1, offvalue =0, height =1, width =20, anchor = "w").pack()
    
    framea = tk.LabelFrame(top, padx = 20, pady = 20)
    framea.pack(pady =20, padx = 10, side = "left")
    
    frame5 = tk.LabelFrame(framea, text = "Stim Magnitude in uA", padx = 20, pady = 20)
    frame5.pack(pady =20, padx = 10, side = "top")
    
    frame7 = tk.LabelFrame(framea, text = "Pulse width in us", padx = 20, pady = 20)
    frame7.pack(pady =20, padx = 10, side = "top")
    
    frame8 = tk.LabelFrame(framea, text = "Recovery Ratio", padx = 20, pady = 20)
    frame8.pack(pady =20, padx = 10, side = "top")
    
    frame9 = tk.LabelFrame(framea, padx = 20, pady = 20)
    frame9.pack(pady =20, padx = 10, side = "top")
    
    lowCheck = tk.Checkbutton(framea, variable = lowVar, text = "Check for Low Gain" ,onvalue =1, offvalue =0, height =1, width =20, anchor = "w").pack()
    
    MagWidget = tk.Entry(frame5, bd =5, textvariable = MagVars).pack()
    E1 = tk.Entry(frame7, bd=5, textvariable = PulseVar).pack()
    E2 = tk.Entry(frame8, bd=5, textvariable = RecoveryVar).pack()
    
    P0 = tk.Button(framea, text = "Impedance Test", command =lambda: fullTest()).pack(side = "bottom")
    P1 = tk.Button(framea, text = "ENTER", command =lambda: killGUI(top)).pack(side = "bottom")
    
    top.mainloop() # Starts the TK app main loop
    
    #Checking and initializing variables set by the GUI
    for x in range(16):
        if CheckVars[x].get()==1:
            electrodesSampled.append(x)
            
    for x in range(16):
        if StimVars[x].get()==1:
            electrodesStimming.append(x)
            
    for x in range(16):
        if PosVars[x].get()==1:
            polarities.append(x)
            
    try:
        pulseWidth = int(PulseVar.get())
    except ValueError:
        print("Invalid Pulse Width Value, default to 500")
        pulseWidth = 500
    
    try:
        MagVars = int(MagVars.get())
    except ValueError:
        print("Invalid magnitude, default to 255")
        MagVars = 255
        
    try:
        RecoveryVar = int(RecoveryVar.get())
    except ValueError:
        print("Invalid magnitude, default to 1")
        RecoveryVar =1
        
    highLow =lowVar.get()
    
    #Popping the default value off of the arrays
    electrodesStimming.pop(0)
    electrodesSampled.pop(0)
    polarities.pop(0)
    
    #BACK TO MAIN
    currentDate = datetime.datetime.now()                          # Grabbing the current date and time
    dateString = currentDate.strftime("/home/orserpi/Downloads/JSONData/%B%Y%A%I%M%S%p") # Formatting date and time into .json file name


    #END OF GUI INSTANTIATION#
    channelsToConvert = 4

    commandStructure = make_command_structure(electrodesStimming, polarities, channelsToConvert, pulseWidth, RecoveryVar)
    #change dac_VAL_OUT
    for i in range (len(data)):
        data[i] = np.uint32(commandStructure[i%(len(commandStructure))])

    daq.ddr.write_buf(bytearray(data))
    #block_pipe_return, speed_MBs = daq.ddr.write_channels(set_ddr_read=False)

    #FIFOs reset
    daq.ddr.reset_mig_interface()
    daq.ddr.reset_fifo('ALL')

    # FIFOs restarted, data mux set to read from DDR
    bits = [daq.ddr.endpoints['ADC_WRITE_ENABLE'].bit_index_low,
            daq.ddr.endpoints['DAC_READ_ENABLE'].bit_index_low]
    daq.ddr.fpga.set_ep_simultaneous(daq.ddr.endpoints['ADC_WRITE_ENABLE'].address, bits, [1, 1])
    for i in range(6):
        daq.DAC[i].set_data_mux("DDR")
