"""
This code runs through host driven SPI
and DDR/FIFO driven SPI using the 
pyripherals python package and XEM7310
Abe Stroschein, ajstroschein@stthomas.edu
Dr. Lucas Koerner, koerner.lucas@stthomas.edu
Nathan LoPresto, lopr5624@stthomas.edu
"""

#############
###IMPORTS###
#############

from pyripherals.peripherals.DDR3 import DDR3 
from pyripherals.core import FPGA, Endpoint
from PyQt5 import QtWidgets, QtCore #Used for GUI window
import pyqtgraph as pg #Used for graphing widget inside pyqt5 window
import tkinter as tk # Gui library for the UI, taking in inputs etc.
import pandas as pd
import numpy as np
import binascii
import platform
import datetime
import getpass
import logging # don't think this uses logging, should it?
import atexit
import json
import time
import math
import sys
import csv
import os

###############
###CONSTANTS###
###############

STIM_SETUP = [0xe0ff0000, 0x80200000, 0x80210000, 0x8026ffff, 0x6a000000, 
0x800000c7, 0x8001051a, 0x80020000, 0x80030080, 0x80040016, 0x80050017, 
0x800600a8, 0x8007000a, 0x8008ffff, 0xa00a0000, 0xa00cffff, 0x802200e2, 
0x802300aa, 0x80240080, 0x80254f00, 0xd0280000, 0x8020aaaa, 0x802100ff, 0xe0ff0000]
currentDate = datetime.datetime.now() # Grabbing the current date and time
dateString = currentDate.strftime("/home/orserpi/Downloads/JSONData/%B%Y%A%I%M%S%p") # Formatting date and time into .json file name


#Runs the GUI to get data from the user about the experiment
def runGUI():
    dataPointsToShow = 1000          # The Amount of data points to show in the graphing window
    
    top = tk.Tk()                                       # Initialize the TKinter APP
    top.title("Intan Sense/Stim Initialization window") # Setting the title of the tk app
    top.geometry("1200x750")                            # Setting the geometry in pixels (make this hierarchical later)
    
    #Arrays and data types to hold GUI variables and attributes
    CheckVars, StimVars, PosVars, MagWidget, Buttons, StimButtons, PosButtons, MagVars = [0]*16, [0]*16, [0]*16, [0]*16, [0]*16, [0]*16, [0]*16, [0]*16
    electrodesSampled, electrodesStimming, polarities = [0], [0], [0]
    PulseVar, MagVars,RecoveryVar, SpeedVar = tk.StringVar(), tk.StringVar(), tk.StringVar(), tk.StringVar()
    lowVar = tk.IntVar()
    for x in range(16):
        CheckVars[x] = tk.IntVar()
        StimVars[x] = tk.IntVar()
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
    
    frame9 = tk.LabelFrame(framea, text = "SPI Speed in kHz" , padx = 20, pady = 20)
    frame9.pack(pady =20, padx = 10, side = "top")
    
    lowCheck = tk.Checkbutton(framea, variable = lowVar, text = "Check for Low Gain" ,onvalue =1, offvalue =0, height =1, width =20, anchor = "w").pack()
    
    MagWidget = tk.Entry(frame5, bd =5, textvariable = MagVars).pack()
    E1 = tk.Entry(frame7, bd=5, textvariable = PulseVar).pack()
    E2 = tk.Entry(frame8, bd=5, textvariable = RecoveryVar).pack()
    E3 = tk.Entry(frame9, bd=5, textvariable = SpeedVar).pack()
    
    P0 = tk.Button(framea, text = "Impedance Test", command =lambda: fullTest()).pack(side = "bottom")
    P1 = tk.Button(framea, text = "ENTER", command =lambda: killGUI(top)).pack(side = "bottom")
    
    top.mainloop() # Starts the TK app main loop
    
    #Checking and initializing variables set by the GUI
    for x in range(16):
        if CheckVars[x].get()==1:
            electrodesSampled.append(x)
        if StimVars[x].get()==1:
            electrodesStimming.append(x)
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
    
    try:
        SpeedVar = int(SpeedVar.get())
    except ValueError:
        print("Invalid speed, default to 5 Mhz")
        Speedvar =1
        
    highLow =lowVar.get()
    
    #Popping the default value off of the arrays
    electrodesStimming.pop(0)
    electrodesSampled.pop(0)
    polarities.pop(0)
    return electrodesStimming, polarities, pulseWidth, RecoveryVar, MagVars, SpeedVar, electrodesSampled

#Here, the impedence check is run on the intan chip, results are printed out
def fullTest():
    #Would it be best to do this in host mode?
    #If it's easy to get miso results in host mode, then this would be quick
    # Link: https://github.com/heatherorser/OrserNeuroStimResearch/blob/master/Intan/SPI%20Systems%20Code/SPIDriverPythonCode/Spidev/GraphingGUI.py
    
    print("doing an impedence check")
    
# Self explanatory
def killGUI(gui):
    gui.destroy()
    
#Changes the magnitude of stimming electrodes
def electrodeMag(polarity, electrode, magnitude):
    commandString = "a0"
    magnitude = (magnitude%256)
    if polarity==0:
        baseReg=64
    else:
        baseReg=96
    baseReg+=electrode
    commandString += ((hex(baseReg))[2:] + "8000")
    return commandString

#Turns off all stim channels
def stimOff():
    return 0xa02a0000

#Turns on an array of channels 
def onChannel(channels):
    commandInt = 0xa02a0000
    for x in channels:
        commandInt |= (1<<x)
    return commandInt

# Changes the polarity of the channels (MOSI and MISO accounted for) (changed from unflagged)
def polarityPositive(channels):
    commandInt = 0xa02c0000
    for x in channels:
        commandInt |= (1<<x)
    return commandInt

# Flips the polarity of a channel
def polarityNegative(channels):
    commandInt = 0xa02c0000
    flipped = 0x0000
    for x in channels:
        flipped |= (1<<x)
    flipped ^= 0xffff
    commandInt|=flipped
    return commandInt

#Sets the magnitudes and polarities of the stimming
def setAttributes(magnitude, anodes, cathodes, ratio):
    list_of_commands = []
    for x in anodes:
        list_of_commands.append(electrodeMag(1,x,int(magnitude/len(anodes))))
        list_of_commands.append(electrodeMag(0,x,int(magnitude/len(anodes)/ratio)))
    for x in cathodes:
        list_of_commands.append(electrodeMag(1,x,int(magnitude/len(cathodes)/ratio)))
        list_of_commands.append(electrodeMag(0,x,int(magnitude/len(cathodes))))

    return list_of_commands


#TODO: Fix these converts
def convertChannel(channel):

    '''
    baseConvert = 0x08000000
    baseConvert |= (channel<<16)
    '''
    return 0x08000000

#TODO: Downtime needs to be added
#Makes the command structure to load into the DDR3
def make_command_structure(electrodesStimming, polarities, channelsToConvert, pulseWidth, RecoveryVar):

    mosiIterator =0
    command_structure = []
    convertsPos = int((pulseWidth/55)-2)
    convertsNeg = int(((pulseWidth*RecoveryVar/55))-1)
    afterConverts = (channelsToConvert-(convertsPos + convertsNeg))%channelsToConvert
    commandsDone = (convertsPos+convertsNeg+afterConverts+9)
    extraCommands =0
    if commandsDone>24:
        extraCommands = 24-(commandsDone%24)
    else:
        extraCommands = 24%commandsDone

    command_structure.append(polarityPositive(electrodesStimming))
    command_structure.append(onChannel(electrodesStimming+polarities))
    for x in range(convertsPos):
        command_structure.append(convertChannel(mosiIterator%channelsToConvert))
        mosiIterator +=mosiIterator
    command_structure.append(stimOff())
    command_structure.append(polarityNegative(electrodesStimming))
    command_structure.append(onChannel(electrodesStimming+polarities))
    for x in range (convertsNeg):
        command_structure.append(convertChannel(mosiIterator%channelsToConvert))
        mosiIterator += mosiIterator
    command_structure.append(stimOff())
    for x in range (afterConverts):
        command_structure.append(convertChannel(mosiIterator%channelsToConvert))
        mosiIterator += mosiIterator
    command_structure.append(0xa02effff)
    command_structure.append(0xa02e0000)
    for x in range(extraCommands):
        command_structure.append(stimOff())

    return command_structure

#Creates the .yaml file 
def createYaml():
    username = getpass.getuser()
    pathname = "C:/Users/"+ username + "/.pyripherals"
    filepath = os.path.join(pathname, "config.yaml")
    if not os.path.exists(pathname):
        os.makedirs(pathname)
    f = open(filepath, 'w')
    line1 = "endpoint_max_width: 32\n"
    line2 = "ep_defines_path: C:/Users/" + username + "/orserstim/fpga_XEM7310/fpga_XEM7310.srcs/sources_1/ep_defines.v\n"
    line3 = "fpga_bitfile_path: C:/Users/" + username + "/orserstim/fpga_XEM7310/fpga_XEM7310.runs/impl_1/top_level_module.bit\n"
    line4 = "frontpanel_path: C:/Program Files/Opal Kelly/FrontPanelUSB\n"
    line5= "registers_path: C:/Users/" + username + "/pyripherals/Registers.xlsx\n"
    f.write(line1+line2+line3+line4+line5)
    f.close


#TODO: Looks like this works, but check this again
#Splits the command structure into the arrays needed for dataArrays 1 and dataArrays 0
def splitCommandsToDataArrays(commandStructure, dataArrayLength):
    commandTop16 = []
    commandBottom16 = []
    for x in commandStructure:
        commandTop16.append(x>>16)
        bottom = x&0xffff
        commandBottom16.append(bottom)
    newArray0 = np.tile(commandBottom16,dataArrayLength//len(commandStructure))
    newArray1 = np.tile(commandTop16,dataArrayLength//len(commandStructure))

    extraCommands = dataArrayLength-len(newArray0)

    for x in range (extraCommands):
        newArray1 = np.append(newArray1, 0x0000)
        newArray0 = np.append(newArray0, 0x0000)

    print(newArray0[0:50])
    print(newArray1[0:50])
    return newArray0, newArray1

#combines the 2, 16-bit miso results into a single 32 bit miso response
def combine(lower15bits, higher16bits):
    combinedArray = []
    for x in range (len(lower15bits)):
        addVal = (lower15bits[x]+ (higher16bits[x]<<16))
        combinedArray.append(addVal)
    return combinedArray


#TODO: This needs to be more robust
# Sorts data into the type of MOSI transfer it came from
def isConvert(data):
    if data[2:6] == "ffff" or data[6:8] == "20":
        return False # Write
    else:
        return True

# Converts the low gain result of a channel into volts
def convertLowGainToV(data):
    data1 = (hex(data[2]))[2:]
    data2 = (hex(data[3]))[2:]
    if len(data1)<2:
        data1 = "0" + data1
    if len(data2)<2:
        data2 = "0" + data2
    finalString = data1 + data2
    rawData = (int(finalString, 16))
    return round((rawData-512)*-.01923, 4)

# Converts high gain results into millivolts
def convertHighGainTomv(data):
    data1 = (hex(data[0]))[2:]
    data2 = (hex(data[1]))[2:]
    if len(data1)<2:
        data1 = "0" + data1
    if len(data2)<2:
        data2 = "0" + data2
    finalString = data1 + data2
    rawData = (int(finalString, 16))
    return round((rawData-32768)*.000000195, 4)

#TODO: This should be high gain
def ToVoltage(data):
    data = data&0x3ff
    return round((data-512)*-.01923,4 )

##################################
##########GRAPHING CLASS##########
##################################
class MainWindow(QtWidgets.QMainWindow):

    def __init__(self,channelsToConvert,*args, **kwargs):
        super(MainWindow, self).__init__(*args, **kwargs)
        
        self.graphWidget = pg.PlotWidget()
        self.setCentralWidget(self.graphWidget)
        self.channelsList = [0]
        
        for x in range(channelsToConvert+1): # Creates a array for each channel in the channel list
            self.channelsList.append(list(range(1000))) 
        
        self.channelsList.pop(0) # First channel in channel list is unusable
        self.graphWidget.setBackground('w')
        self.setWindowTitle("Channels")
        self.data_lines = [0]*channelsToConvert # Make as many plotting lines as sampled channels
        
        for x in range(channelsToConvert): #Creates a new graphing line for each sampled channel
            self.data_lines[x] =  self.graphWidget.plot(self.channelsList[0], self.channelsList[x+1], pen=(x,channelsToConvert+1))
        
        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.update_plot_data) # Calls "update_plot_data" continuously
        self.timer.start()                                # Starts the QT timer
        self.convertData = []                             # ConvertData holds the current conversion vals from the last cycle
        self.mosiIterator =0                              # Iterated through each channel as converts come in 
        self.dataPoint = []                               # The current results in the form [tim, ch1, ch2..]
        self.beginTime = time.time()                      # Initializes the start time of the program
        self.lastCycleStart = time.time()                           # Initializes the start of the last conversion cycle
        self.lastCycleEnd = time.time()                              # Initializes the end of the last conversion cycle
        
    #Called by each MainWindow object by QTimer()
    def update_plot_data(self):

        #TODO: check the speed and data width here
        current_data, _ = daq.ddr.read_adc(blk_multiples = 64)
        chan_data = daq.ddr.deswizzle(current_data)
        chan_stack = np.vstack(
                        (chan_data[0], chan_data[1], chan_data[2], chan_data[3]))

        combine_stack = combine(chan_stack[0],chan_stack[1]) #taking top and bottom 16 bits together into 32 bit command

        allConverts = []
        for x in combine_stack:
            if (isConvert(hex(x))):
                allConverts.append(ToVoltage(x))

        #TODO: Make this modular
        allConverts = allConverts[0::20]
        # convert into low or high gain

        self.lastCycleEnd= time.time()

        for x in range (len(allConverts)):
            #Add new entries
            self.channelsList[0].append(self.mosiIterator)
            self.channelsList[1].append(allConverts[x])

            self.mosiIterator= self.mosiIterator+1

            #Delete old entries
            self.channelsList[0].pop(0)
            self.channelsList[1].pop(0)

        self.lastCycleStart = time.time()

        #self.data_lines is the instance variable of the pg plot, update with timestamp and respective channel
        for n in range(len(self.data_lines)):
            self.data_lines[n].setData(self.channelsList[0], self.channelsList[1])
        

#Fills DDR with null commands, exits the python script
def emergencyInterrupt():
    daq.ddr.write_buf(bytearray(0x00000000))
    print("Executing emergency interrupt")
    exit()


#dumps the metadata from the experiment into a json file for future use
def getMetaData():
    metaDict = {
        "Date": "{:%d, %b %Y}".format(datetime.date.today()),
        "OS":   platform.system(),
        "OS Version": platform.version(),
        "Pulsewidth(us)": pulseWidth,
        "Stim Magnitude(uA)": magnitude,
        "Recovery Ratio" : RecoveryVar,
        "Anodes": electrodesStimming,
        "Cathodes": polarities
        }
    currentDate = datetime.datetime.now()                          # Grabbing the current date and time
    dateString = currentDate.strftime("/Users/lopr5624/JSONData/%B%Y%A%I%M%S%p") 
    f = open(dateString + ".json", "x")                              # Creating a .json file with the datetime name
    f.close()    
    outfile = open(dateString + ".json", "w")                        # Opening json file for data dump
    json.dump(metaDict, outfile, indent =6) # Writing data to disk
    outfile.close()         
    return metaDict

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
    time.sleep(2)
    f.send_trig(eps["GP"]["SYSTEM_RESET"])  # system reset

    #Initialize a daq object, containing DAC, DDR etc. objects
    daq = Daq(f)
    daq.ddr.parameters= {"data_version": daq.ddr.data_version}


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
    #STIM SETUP
    for x in range(len(STIM_SETUP)):
        daq.DAC[0].write(int(STIM_SETUP[x]))
 
    #Not needed most likely, system will defualt to host mode during host-driven writes
    daq.DAC[0].set_data_mux("host")


    #DDR is loaded with waveforms
    daq.ddr.write_setup(data_driven_clock=False)

    #RUNNING THE GUI#
    electrodesStimming, polarities, pulseWidth, RecoveryVar, magnitude, SpeedVar, electrodesSampled = runGUI()

    finalSpeed = 100000/SpeedVar

    print("SpeedVar is: " + str(SpeedVar) + " and the finalSpeed is: " + str(finalSpeed))
    
    #TODO: Connect this to the speed input from the user
    daq.DAC[0].set_spi_sclk_divide(25)

    attributes = setAttributes(magnitude, electrodesStimming, polarities, RecoveryVar)
    
    #SETTING UP THE MAGNITUDES AND RATIOS OF STIMMING#
    for x in range(len(attributes)):
        print(attributes[x])
        daq.DAC[0].write(int(attributes[x], 16))

    #Keep this for when host-driven setup is written
    for i in range(6):
        daq.DAC[i].set_data_mux("DDR")

    commandStructure = make_command_structure(electrodesStimming, polarities, len(electrodesSampled), pulseWidth, RecoveryVar)

    for x in commandStructure:
        print(hex(x))

    daq.ddr.data_arrays[0], daq.ddr.data_arrays[1] = splitCommandsToDataArrays(commandStructure, len(daq.ddr.data_arrays[0]))

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

    app= QtWidgets.QApplication(sys.argv) # Instantiation of Qt app
    obj = MainWindow(len(electrodesSampled))                    # Instantiation of the window
    obj.show()                            # Draw window
    app.exec_()                           # Execute the application
