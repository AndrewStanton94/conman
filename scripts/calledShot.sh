#! /bin/bash

screenshotsDir="/home/andrew/Pictures/scrot/"
echo "${screenshotsDir}"
filename=$(echo "" | rofi -dmenu -p "File name" -lines 2).png
echo "${filename}"
name="${screenshotsDir}${filename}"
echo "${name}"

[ ! -f $name ] \
	&& sleep 0.5s \
	&& scrot "${filename}" --focused -e 'mv $f ~/Pictures/scrot/' \
	&& notify-send --icon /usr/share/icons/breeze-dark/devices/64/video-display.svg 'scrot' "Window screenshot called ${name}"
