#!/usr/bin/env bash

BASEPATH=https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/
FILES=( "sysinfo" "sysinfo_settings" )
REMOVE=( "Help.md" "rsysinfo" "arg" "custom_settings")
VER="v1.1.6"

echo sysinfo install/update started $VER

# Setup ~/bin directory
mkdir ~/bin >/dev/null 2>&1
cd ~/bin >/dev/null 2>&1

# Install files
for FILE in "${FILES[@]}"
do
   rm $FILE >>.sysinfolog 2>&1
   wget -q ${BASEPATH}${FILE} 
   chmod +x $FILE >>.sysinfolog 2>&1
   echo -n "#"
done
# Remove files
for FILE in "${REMOVE[@]}"
do
   rm $FILE >>.sysinfolog 2>&1
   echo -n "*"
done

# add sysinfo_settings

# Path to custom settings file
sysinfo_settings="$HOME/bin/sysinfo_settings"

# Path to .bashrc
bashrc_file="$HOME/.bashrc"

# Check if sysinfo_settings line already exists in .bashrc
if ! grep -qF "source $sysinfo_settings" "$bashrc_file"; then
    # Append the source command to .bashrc
    echo "source $sysinfo_settings" >> "$bashrc_file"
    echo
    echo "Sysinfo settings sourced to $bashrc_fie"
else
    echo
    # echo "Sysinfo settings already sourced to $bashrc_file"
fi

# make sure to reload to include latest sysinfo settings
source $bashrc_file
echo "Type source ~/.bashrc for updated settings to take effect."

echo
echo sysinfo install/update complete $VER

# run this script to download and run the installer
# wget -q -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash