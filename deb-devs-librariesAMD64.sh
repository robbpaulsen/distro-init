#!/bin/bash
#set -e
###################################################################################################
# Author 	: Robbpaulsen
# Website   : https://github.com/robbpaulsen
# Email     : pemmetest.087@gmail.com
###################################################################################################
#
# A mix of necessary libraries for debian/ubuntu environments, focus on Window Managers, C, Rust,
# Go, Pyton and terminal based helpers for coloring and ther things
#
###################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
###################################################################################################

sudo apt-get install --assume-yes pv bc gcc g++ llvm-dev clang bc build-essential \
	cmake makedev cmake-curses-gui automake autoconf autogen pkg-config libgit2-dev \
	libcurl4-openssl-dev libssh-dev libssl-dev pkgconf python3-pip \
	python3-dev python3-virtualenv libcairo2-dev libgirepository1.0-dev libbluetooth-dev \
	libdbus-1-dev python3-cairo-dev meson patchelf libgmp3-dev gengetopt \
	libpcap-dev flex byacc libjson-c-dev libunistring-dev libjudy-dev libxcb1-dev libxcb-keysyms1-dev \
	xcb-proto libev4 libmpdclient2 libxcb-composite0 libxcb-xrm0 libxcb-xtest0 libxcb-glx0-dev \
	libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xinput-dev libxcb-util-dev \
	libxcb-image0-dev libxcb-shape0-dev libxcb-cursor-dev libxkbcommon-dev libxkbcommon-x11-dev \
	libxkbcommon-tools libxcb-imdkit-dev libxcb-ewmh-dev libxcb-icccm4-dev \
	libxcb-randr0-dev libstartup-notification0-dev libgdk-pixbuf-2.0-dev \
	libgdk-pixbuf-xlib-2.0-dev libglib2.0-dev libglibmm-2.68-dev \
	libpango1.0-dev libpangocairo-1.0-0 libcairo2-dev glibc-source glib-networking \
	glib-networking-common glib-networking-services glibc-doc checkinstall \
	ninja-build gperf ccache dfu-util device-tree-compiler python3-setuptools python3-tk \
	python3-wheel xz-utils file gcc-multilib g++-multilib libsdl2-dev libmagic1
