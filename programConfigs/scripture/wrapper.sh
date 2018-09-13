printf "<$1>\n$(xclip -selection c -o | sed -e 's/%/%%/g')\n</$1>" | xclip -selection c
