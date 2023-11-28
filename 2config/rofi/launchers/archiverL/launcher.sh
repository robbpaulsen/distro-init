#!/bin/bash
#
# Github : @robbpaulsen

dir="$HOME/.config/rofi/launchers/archiverL"
theme='propiedades'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
