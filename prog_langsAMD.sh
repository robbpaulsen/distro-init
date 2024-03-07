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
##
# NVM, NPM, Node, Rust and Cargo Installtion

clear

# NVM headless installation
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
	source "$HOME/.zshrc" &&
	nvm install --lts &&
	nvm use --lts &&
	sleep 2 &&

	# Yarn installation with npm
	npm install --global yarn &&
	sleep 2

# Rustup and cargo installation
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -sSf | sh -s -- --verbose -y --default-toolchain stable &&
	source $HOME/.cargo/env &&
	sleep 2

# Go installer
cd
wget https://git.io/go-installer.sh &&
	chmod u+x go-installer.sh && bash go-installer.sh
