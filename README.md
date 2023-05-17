
# FPGA SPI Controller Setup #

As a response to the timing problems created by the Promira, SPI Driver, and Raspberry Pi systems, an FPGA-driven SPI controller was the next logical step to gain the results we desired. As an extension of the work done by Dr. Lucas Koerner and the Pyripheral software package developed by Abraham Stroschein, this setup offers a customizable SPI controller with overwhelmingly constant timing. What follows is a step-by-step setup for this system, and the steps a user would need to customize the system to their own specifications.  

Setup and pinout here: [Pinout](https://uofstthomasmn-my.sharepoint.com/:w:/r/personal/orse4841_stthomas_edu/_layouts/15/Doc.aspx?sourcedoc=%7B3EB9A87E-E878-4176-B991-343D5E66C516%7D&file=FPGASPI%20Pinout.docx&action=default&mobileredirect=true)

Step by step for project Initialization:

1. Set up FPGA hardware as described above in the pinout.

    -Make sure to plug in FPGA, if POWER led is lit up, this will indicate power.

    -Plug USB connection to host.

    -Connect desired electrodes to stim and sense connections.

2. You will need a fresh clone of the repository. >>git clone https://github.com/NathanLoPresto/orserstim 

    -Make sure you have admin access.

    -Open a windows terminal and type in the command above.

    -If git is not installed, download git from the following location [git] (https://git-scm.com/downloads)

    -If already cloned, “git pull” from /orserstim directory to get the latest version.

    -Check installation location, should be in (C:/users/username).

3. Download [FrontPanel](https://pins.opalkelly.com/downloads) (USBDriver-Only [your machine] 5.2.9.exe) from OpalKelly  

    -Run the executable, should run the frontpanel installer.

    -This application will be a good indicator if your system has the correct USB drivers.

    -You will not need the SDK, this is used to manually load bitfiles into the FPGA, but our python script will do this with the bitfile pulled from the repository.

4. In Terminal:

    -`pip install pyripherals`

    -This package was put together by Abe Stroschein and Dr. Lucas Koerner specifically for the XEM7310 with their peripherals, but our bitfile and python script have the necessary changes for the Intan accessory.

    -If pip is not working, download the anaconda python environment here (this will manage path and package installations).

5. In the directory: C:/users/(username)/.pyripherals

    -You may need to make this new folder manually

    -Download [config.yaml](https://uofstthomasmn-my.sharepoint.com/personal/orse4841_stthomas_edu/_layouts/15/onedrive.aspx?ct=1653404356387&or=OWA%2DNT&cid=2a36761c%2Da80c%2Dc28d%2D05c8%2D09a89d7b7e67&ga=1&id=%2Fpersonal%2Forse4841%5Fstthomas%5Fedu%2FDocuments%2FOrser%20Research%20Group%2FIntan%2FSPI%20Systems%20Code%2FXEM7310%2Fconfig%2Eyaml&parent=%2Fpersonal%2Forse4841%5Fstthomas%5Fedu%2FDocuments%2FOrser%20Research%20Group%2FIntan%2FSPI%20Systems%20Code%2FXEM7310) place in this location 

    -Check the yaml files, and edit the username directory with your username, sure to match the file locations inside the orserstim cloned repository 

6. Under C:/users/username make another folder called Pyripherals, insert Registers.xlsx into this location

    -Update the .yaml register's location with these locations

    -This folder name is different from the .pyripherals for the yaml file

7. Open and run Orserstimtest.

    -I had success running this using the ipython extension in visual studio code.  

    -In the visual studio terminal:

    -`cd python`

    -`cd tests`

    -`ipython`

    -`%run orserstimtest.py`

8. For possible pip install issues:

    -`pip install pandas`

    -`pip install numpy`

    -etc

This system is currently built for the specific needs of Dr. Orser’s sense and stim project but can be used as a general SPI controller but making modifications in the right places. First, changes could be made to the Verilog. Examples of this could be changing the width of the data in and out of the SPI controller, the speed of SPI transactions, or a change of the number of slave devices connected to the XEM7310 SPI controller. The best and easiest way to do this would be to download the same version of Vivado that the project was built in (Vivado 2022.1) and select the “open a project” option. The project file will be fpga_XEM7310.xpr in the orserstim/fpga_XEM7310 folder. After loading this project, you can make edits to the verilog, synthesize, implement and generate a bitstream for the project. The location of the bitfile after generating the bitstream should automatically match the current location of the .yaml file (will be in the .runs section of XEM7310).  


### Pinout for FPGA breakout board: ###

|Pin name| XEM7310 Pin| BRK7010 Pin|
|!-------|!-----------|!-----------|
|SCLK    |H3          |J4-5        |
|CS      |K1          |J4-1        |
|MOSI    |J1          |J4-3        |
|MISO    |G2          |J4-8        |
|GND     |J4          |J4-16       |

NOTE: The pyripherals package prints when it reads the ddr. Find this file in your local drive and delete this line out of read_adc() to speed up the mosi pipeline
