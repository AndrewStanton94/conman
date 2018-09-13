printf "<$1>$(xclip -selection c -o | sed -e 's/%/%%/g')</$1>" | xclip -selection c
