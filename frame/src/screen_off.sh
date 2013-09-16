#!/bin/sh
# Script to turn off display

# Set display so that script will effect screen on frame
export DISPLAY=:0

xset s reset
xset s on
xset s 1

exit 0