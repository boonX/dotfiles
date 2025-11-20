#!/usr/bin/bash

# If IKEA (klipporna)
if swaymsg -t get_outputs | grep -q P3222QE || swaymsg -t get_outputs | grep -q P3223QE; then
	swaymsg output eDP-1 pos 930 2160
	swaymsg output DP-1 pos 0 0
# If IKEA centralen
elif swaymsg -t get_outputs | grep -q U3419W; then
        swaymsg output eDP-1 pos 900 1440
	swaymsg output DP-1 pos 0 0
# If devoteam (I think)
elif swaymsg -t get_outputs | grep -q U2715H; then
        swaymsg output eDP-1 pos 517 1440
# If only 27 inches at home.
elif swaymsg -t get_outputs | grep -q 011NTSU85190 && ! swaymsg -t get_outputs | grep -q G8E01898SL0; then
        swaymsg output eDP-1 pos 2560 0
	swaymsg output HDMI-A-1 mode 2560x1440@60Hz
else
        swaymsg output eDP-1 pos 4480 0
fi
