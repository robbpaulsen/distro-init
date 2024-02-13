#!/usr/bin/env bash

# VARIABLE DATABASE AND OTHER THINGS
USERNAME=$(whoami)
LOCALPATH=/home/"${USERNAME}"
KERNEL=$(uname -r)
DISTRIBUTION=$(uname -o)
HOST=$(uname -n)
BIT=$(uname -m)
ROWTE=$(pwd)
DLOADS="$(LOCALPATH)/Downloads"
DOCS="$(LOCALPATH)/Documents"
CONF="$(LOCALPATH)/.config"
