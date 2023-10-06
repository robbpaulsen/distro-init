#!/bin/bash
#!/bin/bash
#set -e
##################################################################################################################
# Author 	: Robbpaulsen
# Website   : https://github.com/robbpaulsen
# Email     : pemmetest.087@gmail.com
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
# Rust and Cargo unattended installation
cd &&
	clear

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -sSf | sh -s -- -y --profile default --no-modify-path --default-toolchain stable &&
	source '$HOME/.cargo/env' &&

	# Golang unattended installation
	cd &&
	wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz &&
	sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.2* &&
	export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH
/bin/rm -rf go1.21.* &&
	cd &&

	# NVM headless installation
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
	nvm install --lts &&
	nvm use --lts &&

	# Yarn installation with npm
	npm install --global yarn
