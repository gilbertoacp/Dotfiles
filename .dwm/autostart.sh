#!/bin/bash


export _JAVA_AWT_WM_NONREPARENTING=1
setxkbmap es
imwheel &
nitrogen --restore &
picom -bcCGb --no-fading-openclose --sw-opti
dwmblocks &
exec dwm
