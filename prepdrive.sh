#!/bin/bash

# This script was made by @ios_euphoria

echo "     --------------- Welcome to MacPac! ---------------     "
echo "Developed by: Bart Tarasewicz @ios_euphoria"
echo "We will first wipe disk2. Then auto-flash 6 operating systems to disk2."
echo ""
echo "------ Warning! You need to have a USB 64 GBs or more! ------"
echo ""
echo ""

read -p "Press [Enter] key to start wiping and flash OS to USB..."
echo " "
read -t 5 -p "Starting wipe in 5 seconds..."

echo ""
echo "Wiping USB drive..."
diskutil eraseDisk JHFS+ MacPacUSB /dev/disk2
echo "USB successfully wiped!"


echo ""
echo "Preparing USB for multiple partitioning..."

sudo diskutil partitionDisk /dev/disk2 GPT JHFS+ MontereyInstaller 15g JHFS+ BigSurInstaller 14g JHFS+ CatalinaInstaller 10g JHFS+ HighSierraInstaller 7g JHFS+ CapitanInstaller 7g JHFS+ FinalVolume 0b


echo ""
echo "6 partitions created successfully!"


echo ""
echo "------ MacPac USB Formatted and Ready for Installers!!! ------"
echo ""
echo ""

