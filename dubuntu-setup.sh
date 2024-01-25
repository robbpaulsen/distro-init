#!/usr/bin/env bash
##
#
# Author:   Robbpaulsen
# GitHub:   github.com/robbpaulsem
##
#set -x

# Redhat dnf packages and libraries to install for a Tiling Window Manager setup

clear

trap ctrl_c INT

function ctrl_c() {
	exit_script
}

if [ "$EUID" -ne 0 ]; then
	echo -e "\n\n[+] Please run as root\n"
	exit
fi

echo -e "\n\nInitializing Setup...\n"

readarray -t pkgsArr <"$(pwd)"/dubuntu.lst
apt-get --assume-yes install "${pkgsArr[@]}" &>/dev/null &&
	echo -e "\n\n[+] All Packages and Libraries Installed\n"
