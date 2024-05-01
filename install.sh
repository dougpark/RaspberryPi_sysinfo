#!/usr/bin/env bash

BASEPATH=https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/
FILES=( "sysinfo" "custom_settings" )
REMOVE=( "Help.md" "rsysinfo" "arg")

echo sysinfo install/update started

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

# add custom_settings

# Path to custom settings file
custom_settings="/bin/custom_settings"

# Path to .bashrc
bashrc_file="$HOME/.bashrc"

# Check if custom_settings line already exists in .bashrc
if ! grep -qF "source $custom_settings" "$bashrc_file"; then
    # Append the source command to .bashrc
    echo "source $custom_settings" >> "$bashrc_file"
    echo
    echo "Custom settings sourced to ~/.bashrc"
else
    echo
    echo "Custom settings already sourced to ~/.bashrc"
fi

# make sure to reload custom settings
source $bashrc_file

echo
echo sysinfo install/update complete

# run this script to download and run the installer
# wget -q -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash