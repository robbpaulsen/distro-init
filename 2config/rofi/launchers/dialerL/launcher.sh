#!/bin/bash
#
# Github : @robbpaulsen

dir="$HOME/.config/rofi/launchers/dialerL"
theme='propiedades'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
