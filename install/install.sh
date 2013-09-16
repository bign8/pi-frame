#!/bin/sh
# Install pi-frame

# make sure to expand root fs / enable ssh / boot into shell (no X)

# remove wheezy crap
# sudo apt-get remove scratch omxplayer python # remove
# sudo apt-get purge scratch omxplayer python # remove configs
# sudo apt-get autoremove

# update all other libraries
sudo apt-get update
sudo apt-get upgrade -y # say yes to (are you sure?)

# additional requirements/configuration
sudo apt-get install feh x11-xserver-utils

crontab crontab.txt

# Cleanup after myself
apt-get clean # delete apt cache