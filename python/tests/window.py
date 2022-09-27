from PyQt5 import QtWidgets, QtCore
import pyqtgraph as pg
import time


STIM_SETUP = [0xe0ff0000, 0x80200000, 0x80210000, 0x8026ffff, 0x6a000000, 0x800000c7, 0x8001051a, 0x80020000, 0x80030080, 0x80040016, 0x80050017, 
0x800600a8, 0x8007000a, 0x8008ffff, 0xa00a0000, 0xa00cffff, 0x802200e2, 0x802300aa, 0x80240080, 0x80254f00, 0xd0280000, 0x8020aaaa, 0x802100ff, 0xe0ff0000]

def fullTest():
    print("doing the full test")

# Self explanatory
def killGUI(gui):
    gui.destroy()
    
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

def stimOff():
    return 0xa02a0000

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


def setAttributes(magnitude, anodes, cathodes, ratio):
    list_of_commands = []
    for x in anodes:
        list_of_commands.append(electrodeMag(1,x,int(magnitude/len(anodes))))
        list_of_commands.append(electrodeMag(0,x,int(magnitude/len(anodes)/ratio)))
    for x in cathodes:
        list_of_commands.append(electrodeMag(1,x,int(magnitude/len(cathodes)/ratio)))
        list_of_commands.append(electrodeMag(0,x,int(magnitude/len(cathodes))))

    return list_of_commands

def convertChannel(channel):
    baseConvert = 0x08000000
    baseConvert |= (channel<<16)
    return baseConvert

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
