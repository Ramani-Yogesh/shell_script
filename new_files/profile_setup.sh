#!/bin/bash

# Description: This script will do the profile setup for the new systems

# Script Usage:
    #  chmod +x profile_setup.sh
    #  ./profile_setup.sh
# Note:
    # -

##Package update
echo "Package update is going on"
sudo apt-get update
echo "Package upgrade is going on, it will take some time. Please wait..."
sudo apt-get dist-upgrade -y
echo "Removing unwanted packages..."
sudo apt-get autoremove -y
##Necessary Packages
echo "Installing necessary packages..."
sudo apt-get install iptux vim-gtk openssh-client gnupg rng-tools htop atop snapd chromium-browser git -y
##Slack Installation
echo "Installing slack"
sudo snap install slack --classic
##GPG Key Config
echo "GPG Configuration for file encryption"
gpg --gen-key
wget http://www.vim.org/scripts/download_script.php?src_id=24199 -O gnupg.vim
mkdir ~/.vim/plugin -p
cp gnupg.vim ~/.vim/plugin/
##SSH Key Config
echo "SSH Key Generation"
ssh-keygen -b 4096 -t rsa
echo "Now your system going to be restart"
sudo reboot
