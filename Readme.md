# SysInfo
* A python script to display info about the current Raspberry Pi
* Works with other debian distributions as well

# Installation
* Copy and paste this command into a terminal on your Raspberry Pi
* $ wget -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash
* This will download and install the sysinfo script into your ~/bin directory

# Run sysinfo
* Run from the Raspbery Pi command line
* Open a new terminal window so that ~/bin is in your path
* Or, close your existing terminal and open a new one
* Type the sysinfo command
* $ sysinfo

# Displayed Information
* Host Name
* IP Address
* DNS Server
* Test if running on Raspberry Pi
* Linux machine
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

# Notes
* Rasberry Pi 64bit lite 
    * ```file``` command not installed

# Dependencies
* Python version 3+