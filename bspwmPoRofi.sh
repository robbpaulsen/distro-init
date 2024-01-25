#!/usr/bin/env bash

# This script assumes you have minimum requirement packages installed:
# - Git
# - Wget
# - Curl

clear

ddirs=/home/$USER/Downloads
mkdir -p "$ddirs"/git-repos
bdir=$ddirs/git-repos/bspwm
sdir=$ddirs/git-repos/sxhkd
pdir=$ddirs/git-repos/polybar
rdir=$ddirs/git-repos/rofi

git clone --recursive https://github.com/baskerville/bspwm.git "$bdir"
git clone --recursive https://github.com/baskerville/sxhkd.git "$sdir"
git clone --recursive https://github.com/polybar/polybar "$pdir"
git clone --recursive https://github.com/DaveDavenport/rofi "$rdir"

cd "$bdir" && make && sudo make install
cd "$sdir" && make && sudo make install
cd "$pdir" && mkdir -p "$(pwd)"/build &&
	cd "$(pwd)"/build && cmake "$(pwd)"/../ && make -j"$(nproc)" &&
	sudo make install
cd "$(rdir)" && git reset --hard && git pull && git submodule init && git submodule update &&
	rm -rf "$(pwd)"/build && autoreconf -i && mkdir "$(pwd)"/build && cd "$(pwd)"/build && "$(pwd)"/../configure &&
	make -j"$(nproc)" && sudo make install
