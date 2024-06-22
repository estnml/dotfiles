#!/bin/bash

# Check swww daemon is running. If it is, kill it and restart.
if pgrep -x "swww-daemon" > /dev/null
then
    echo "Killing swww"
    killall swww-daemon
fi

swww init

# First, select a random file from a directory and use it as a wp
# Change the fps value to match your monitor
# swww img $HOME/pictures/wallpapers/wp11396431-jin-sakai-hd-ghost-of-tsushima-wallpapers.png # Dont show animation on first login
swww img $(find $HOME/pictures/wallpapers -type f | shuf -n 1)