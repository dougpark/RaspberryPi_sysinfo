# SysInfo
* A python script to display info about the current Raspberry Pi
* Works with other debian distributions as well

# Installation
* Copy and paste this command into a terminal on your Raspberry Pi
```shell
wget -q -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash
```
* This will download and install the sysinfo script into your ~/bin directory

# Run sysinfo
* Run from the Raspberry Pi command line
* Tip: Raspberry Pi OS will automatically add ~/bin to your path when you open a new terminal
* Open a new terminal window so that ~/bin is put in your path
* Or, close your existing terminal and open a new one
* Type the sysinfo command
* $ ```sysinfo```

# Displayed Information
* Host Name
* IP Address
* DNS Servers
* Test if running on Raspberry Pi
* Linux machine
* Linux platform
* Processor
* Architecture
* OS Release Info
* Python Implementation
* Python Kind
* Python Version
* Last date apt was updated
* Docker Version
* CPU Load
* Memory Usage
* Disk Usage
* CPU Temperature

# sysinfo --update
* Requires internet access to run
* Always gets the latest version from GitHub
* Updates sysinfo when run
* $ ```sysinfo --update```

# Notes
* Raspberry Pi 64bit lite 
    * ```file``` command not installed
* Buster version of the OS does not include Python3 by default

# Dependencies
* Python version 3+

# For More Information
* [Pi Hardware History](https://elinux.org/RPi_HardwareHistory)
