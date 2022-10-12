###IMPORTS###
from PyQt5 import QtWidgets, QtCore
import pyqtgraph as pg
import time
import tkinter as tk
import datetime
import numpy as np
import os
import getpass


###CONSTANTS###
STIM_SETUP = [0xe0ff0000, 0x80200000, 0x80210000, 0x8026ffff, 0x6a000000, 0x800000c7, 0x8001051a, 0x80020000, 0x80030080, 0x80040016, 0x80050017, 
0x800600a8, 0x8007000a, 0x8008ffff, 0xa00a0000, 0xa00cffff, 0x802200e2, 0x802300aa, 0x80240080, 0x80254f00, 0xd0280000, 0x8020aaaa, 0x802100ff, 0xe0ff0000]
FS = 5e6  # sampling frequency 
dac80508_offset = 0x8000 # DAC offset
currentDate = datetime.datetime.now() # Grabbing the current date and time
dateString = currentDate.strftime("/home/orserpi/Downloads/JSONData/%B%Y%A%I%M%S%p") # Formatting date and time into .json file name
channelsToConvert = 4 #This should be set lower for the Orserstim project
dac_offset = 0x1e00 
cmd_signal = 212
cc_signal = np.ones(4194304, dtype=np.uint32) * dac_offset

###FUNCTIONS###

#Runs the GUI to get data from the user about the experiment
def runGUI():
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
    return electrodesStimming, polarities, pulseWidth, RecoveryVar, MagVars


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

#Sends a convert command to a single channel
def convertChannel(channel):
    baseConvert = 0x08000000
    baseConvert |= (channel<<16)
    return baseConvert

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
