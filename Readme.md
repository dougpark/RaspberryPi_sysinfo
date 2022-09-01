# SysInfo
* A simple bash/python script to display info about the current Raspberry Pi

# Installation
* Make the ~/bin directory and change your workingdir to the new directory
* Open the terminal
* $ mkdir ~/bin
* $ cd ~/bin
* Copy sysinfo file from github to your Raspberry Pi
* From the terminal
* $ wget -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash
* $ wget https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/sysinfo

# Make it runnable
* Make it runnable with the chmod command
* From the terminal
* $ chmod +x sysinfo

# Run sysinfo
* Run from the Raspbery Pi command line
* Open a new terminal window so that ~/bin is in your path
* Or, close your existing terminal and open a new one
* Type the sysinfo command
* $ sysinfo

# Displayed Information
* Host Name
* IP Address
* Test if running on Raspberry Pi
* Linux machine
* Linux uname
* Linux platform
* Processor
* Architecture
* OS Release Info
* Python Implementation
* Python Version
* Last date apt was updated
* Docker Version
* CPU Load
* Memory Usage
* Disk Usage
* CPU Temperature


