#!/usr/bin/env bash
##
# Author:   Robbpaulsen
# GitHub:   github.com/robbpaulsem
##
#set -x -e
##################################################################################################################
# Author:	Robbpaulsen
# Website:	https://github.com/robbpaulsen
# Email:	ozymandias.1987@protonmail.com
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

# COLOR USE THE SCRIPT
Black='\033[1;30m'
Red='\033[1;31m'
Green='\033[1;32m'
Yellow='\033[1;33m'
Blue='\033[1;34m'
Purple='\033[1;35m'
Cyan='\033[1;36m'
White='\033[1;37m'
NC='\033[0m'
blue='\033[0;34m'
white='\033[0;37m'
lred='\033[0;31m'
IWhite="\[\033[0;97m\]"

# VARIABLE DATABASE AND OTHER THINGS
USERNAME=$(whoami)
LOCALPATH="/home/${USERNAME}"
KERNEL=$(uname -r)
DISTRIBUTION=$(uname -o)
HOST=$(uname -n)
BIT=$(uname -m)
ROWTE=$(pwd)

echo -e "${White} ╔───────────────────────────────────────────────╗                 	"
echo -e "${White} |${Cyan} ██████╗ ███████╗██████╗ ██╗    ██╗███╗   ███╗${White} |      "
echo -e "${White} |${Cyan} ██╔══██╗██╔════╝██╔══██╗██║    ██║████╗ ████║${White} |      "
echo -e "${White} |${Cyan} ██████╔╝███████╗██████╔╝██║ █╗ ██║██╔████╔██║${White} |      "
echo -e "${White} |${Cyan} ██╔══██╗╚════██║██╔═══╝ ██║███╗██║██║╚██╔╝██║${White} |	"
echo -e "${White} |${Cyan} ██████╔╝███████║██║     ╚███╔███╔╝██║ ╚═╝ ██║${White} |	"
echo -e "${White} |${Cyan} ╚═════╝ ╚══════╝╚═╝      ╚══╝╚══╝ ╚═╝     ╚═╝${White} |	"
echo -e "${White} ┖───────────────────────────────────────────────┙			"
echo ""
echo -e "${White} [${Blue}i${White}] BSPWM Auto Setup"
echo -e "${White} [${Blue}i${White}] Ozymandias"
echo ""
echo -e "${White} [${Blue}i${White}] Iniciando"
echo ""
sleep 4
echo -e "${White} [${Blue}i${White}] Hello ${Red}${USERNAME}${White}, This is the bspwm installation script for kali linux"

trap ctrl_c INT

function ctrl_c() {
	exit_script
}

if [ "$EUID" -ne 0 ]; then
	echo -e "${Yellow}\n[+]Se te olvido el sudo ...\n${Yellow}"
	exit
fi

echo -e "${lred}\n[+]${lred}${IWhite}Iniciando ...\n${IWhite}"

apt-get --assume-yes update &&
	apt-get --assume-yes full-upgrade

while read -r line; do
	echo -e "$(tput blink)${Cyan}\n[+]${Cyan} ${Green}Instalando $line\n${Green}"
	apt -qq --assume-yes install "$line" &>/dev/null
done <assets/dubuntu.lst
#readarray -t pkgsArr <"$(pwd)"/dubuntu.lst
#apt-get --assume-yes install "${pkgsArr[@]}" &>/dev/null &&
