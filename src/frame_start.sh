#!/bin/sh
# Script to run Digital Picture Frame using Feh
#

# Start X if necessary
if ! pidof X > /dev/null; then
	startx 2>&1 | cat > /dev/null &
	while ! pidof X > /dev/null; do
		sleep 2
	done
fi

# Set display so that script will effect screen on frame
export DISPLAY=:0
xset s off -dpms

# Start slide show
feh --quiet --recursive --randomize --full-screen --hide-pointer --slideshow-delay 15 ../photos/ 2>&1 | cat > /dev/null &

exit 0
