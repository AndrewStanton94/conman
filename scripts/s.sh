#!/bin/bash

s(){
du -a ~/.config ~/Dropbox/ ~/Documents ~/dr2 | awk '{print $2}' | fzf | xargs -r $EDITOR;
}
