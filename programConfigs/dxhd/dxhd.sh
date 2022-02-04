#!/bin/sh

## Terminal
# super + Return
alacritty --command ~/resume.sh

# super + shift + Return
alacritty

## Browser
# super + n
$BROWSER &


## Obsidian
# super + ctrl + o
$OBSIDIAN &

## File exporers
# super + r
urxvtcd -e ranger

# super + p
pcmanfm &

# super + shift + x
i3lock --ignore-empty-password --show-failed-attempts --color "#6a2162"

## Other

# print
scrot '%d-%m-%Y_%H%M.png' -e 'mv $f ~/Pictures/scrot/' && notify-send --icon /usr/share/icons/breeze-dark/devices/64/video-display.svg 'scrot' 'Desktop screenshot'

# super + print
scrot '%d-%m-%Y_%H%M.png' --focused -e 'mv $f ~/Pictures/scrot/' && notify-send --icon /usr/share/icons/breeze-dark/devices/64/video-display.svg 'scrot' 'Window screenshot'
