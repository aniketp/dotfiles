#!/usr/bin/env bash
# Script to change the brightness of my system as apparently
# 'xbacklight' does not work with Dell Inspiron

bright=$(xrandr --verbose | grep -i brightness | cut -d " " -f 2)
change=0.05
negchange=-0.05

if [ "$1" -eq 0 ]; then
    final_bright=$( echo "$bright + $negchange" | bc)
elif [ "$1" -eq 1 ]; then
    final_bright=$( echo "$bright + $change" | bc)
fi

xrandr --output eDP-1-1 --brightness "$final_bright"
exit 0
