#!/bin/bash
#set -e
##################################################################################################################
# Author:	Robbpaulsen
# Website:	https://github.com/robbpaulsen
# Email:	pemmetest.087@gmail.com
##################################################################################################################
#
# Script for a more unattended, headless setup and configurationg for the basic things on any new linux installation.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################
#
# NVM, NPM and Node installtion

clear

# NVM headless installation

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
    source $HOME/.config/zsh/.zshrc &&
    nvm install --lts &&
    nvm use --lts &&
    sleep 3 &&

# Yarn installation with npm

npm install --global yarn