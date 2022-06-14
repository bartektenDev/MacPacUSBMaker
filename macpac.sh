#!/bin/bash

# This script was made by @ios_euphoria

# RUN THIS SCRIPT ONLY AFTER YOU RAN pd.sh! You have to prep the drive partitions before starting flash

echo "     --------------- Welcome to MacPac! ---------------     "
echo "Developed by: Bart Tarasewicz @ios_euphoria"
echo "We will first wipe disk2. Then auto-flash 6 operating systems to USB."
echo ""
echo "------ Warning! Please run 'sudo pd.sh' first, THEN 'sudo mp.sh' ------"
echo ""
echo ""

read -t 5 -p "Starting flash in 5 seconds..."

echo ""
echo "Installing Mac OS Monterey..."
sudo /Applications/Install\ macOS\ Monterey.app/Contents/Resources/createinstallmedia --volume /Volumes/MontereyInstaller
echo "Mac OS Monterey Installed on USB!"

echo ""
echo "Installing Mac OS Big Sur..."
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia --volume /Volumes/BigSurInstaller
echo "Mac OS Big Sur Installed on USB!"

echo ""
echo "Installing Mac OS Catalina..."
sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/CatalinaInstaller
echo "Mac OS Catalina Installed on USB!"

echo ""
echo "Installing Mac OS High Sierra..."
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/HighSierraInstaller
echo "Mac OS High Sierra Installed on USB!"
echo ""

echo ""
echo "Installing Mac OS El Capitan..."
sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/CapitanInstaller --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app
echo "Mac OS El Capitan Installed on USB!"

echo ""
echo "------ MacPac USB Created Successfully!!! ------"
echo ""
echo ""

