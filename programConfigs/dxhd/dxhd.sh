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
# super + o
$OBSIDIAN &

## File exporers
# super + r
urxvtcd -e ranger

# super + p
pcmanfm &

# super + shift + x
i3lock --ignore-empty-password --show-failed-attempts --color "#6a2162"
