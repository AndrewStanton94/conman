#!/bin/sh

## Terminal
# super + Return
$TERMINAL --command ~/resume.sh

# super + shift + Return
$TERMINAL

## Browser
# super + n
$BROWSER &


## Obsidian
# super + ctrl + o
obsidian &

## File exporers
# super + r
$TERMINAL -e ranger

# super + p
pcmanfm &

# super + shift + p
pcmanfm ~/Pictures/scrot &

# super + shift + x
i3lock --ignore-empty-password --show-failed-attempts --color "#6a2162"

## Media

# super + F6
playerctl play-pause

## Other

# print
scrot '%d-%m-%Y_%H%M.png' -e 'mv $f ~/Pictures/scrot/' && notify-send --icon /usr/share/icons/breeze-dark/devices/64/video-display.svg 'scrot' 'Desktop screenshot'

# super + print
scrot '%d-%m-%Y_%H%M.png' --focused -e 'mv $f ~/Pictures/scrot/' && notify-send --icon /usr/share/icons/breeze-dark/devices/64/video-display.svg 'scrot' 'Window screenshot'

# super + shift + print
~/scripts/calledShot.sh
