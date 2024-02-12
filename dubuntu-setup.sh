#!/usr/bin/env bash
##
#
# Author:   Robbpaulsen
# GitHub:   github.com/robbpaulsem
##
#set -x

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

trap ctrl_c INT

function ctrl_c() {
	exit_script
}

# VARIABLE DATABASE AND OTHER THINGS
USERNAME=$(whoami)
LOCALPATH="/home/${USERNAME}"
KERNEL=$(uname -r)
DISTRIBUTION=$(uname -o)
HOST=$(uname -n)
BIT=$(uname -m)
ROWTE=$(pwd)

# SCRIPT PRESENTATION
banner() {
	echo -e "${White} ╔───────────────────────────────────────────────╗                 	"
	echo -e "${White} |${Cyan} ██████╗ ███████╗██████╗ ██╗    ██╗███╗   ███╗${White} |      "
	echo -e "${White} |${Cyan} ██╔══██╗██╔════╝██╔══██╗██║    ██║████╗ ████║${White} |      "
	echo -e "${White} |${Cyan} ██████╔╝███████╗██████╔╝██║ █╗ ██║██╔████╔██║${White} |      "
	echo -e "${White} |${Cyan} ██╔══██╗╚════██║██╔═══╝ ██║███╗██║██║╚██╔╝██║${White} |	"
	echo -e "${White} |${Cyan} ██████╔╝███████║██║     ╚███╔███╔╝██║ ╚═╝ ██║${White} |	"
	echo -e "${White} |${Cyan} ╚═════╝ ╚══════╝╚═╝      ╚══╝╚══╝ ╚═╝     ╚═╝${White} |	"
	echo -e "${White} ┖───────────────────────────────────────────────┙			"
	echo ""
	echo -e "${White} [${Blue}i${White}] BSPWM Setup"
	echo -e "${White} [${Blue}i${White}] Ozymandias"
	echo ""
	echo -e "${White} [${Blue}i${White}] Setup Iniciando"
	echo ""
	sleep 4
	echo -e "${White} [${Blue}i${White}] Hello ${Red}${USERNAME}${White}, This is the bspwm installation script for kali linux"
}

if [ "$EUID" -ne 0 ]; then
	echo -e "\n\n[+]Se te olvido el sudo ...\n"
	exit
fi
dfiles=$1

trap ctrl_c INT

function ctrl_c() {
	exit_script
}

if [ "$EUID" -ne 0 ]; then
	echo -e "\n\n[+] Se te olvido el sudo ...\n"
	exit
fi

echo -e "\n\n[+] Iniciando ...\n"

apt-get --assume-yes update &>/dev/null &&
	apt-get --assume-yes full-upgrade &>/dev/null

while read -r line; do
	echo -e "\n\n[+] Instalando "$line"\n"
	apt -qq --assume-yes install "$line" &>/dev/null
done <"$dfiles"
#readarray -t pkgsArr <"$(pwd)"/dubuntu.lst
#apt-get --assume-yes install "${pkgsArr[@]}" &>/dev/null &&
