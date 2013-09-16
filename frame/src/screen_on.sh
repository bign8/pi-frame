#!/bin/sh
# Script to turn on display

# Set display so that script will effect screen on frame
export DISPLAY=:0

xset s reset
xset s off

exit 0