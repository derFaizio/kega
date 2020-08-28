#!/bin/bash
# Kega launch

echo "Downloading Kega Fusion!"
mkdir kega
cd kega
wget https://www.carpeludum.com/download/kega-fusion_3.63-2_i386.deb

echo "Installing 32 bit architecture"
sudo dpkg --add-architecture i386
sudo apt-get update -y

echo "Installing Kega"
sudo dpkg -i kega-fusion_3.63-2_i386.deb
sudo apt install -f

echo "Downloading ROMS"
mkdir roms
cd roms
wget https://raw.githubusercontent.com/derFaizio/kega/master/bk3.zip

echo "Running Kega"
cd /usr/games
./kega-fusion