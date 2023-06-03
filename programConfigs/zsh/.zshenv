export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export LESSHISTFILE="$XDG_STATE_HOME"/less/history

export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo
. "$CARGO_HOME"/env

export PATH=~/.local/bin:$CARGO_HOME/bin:/usr/local/go/bin:/home/andrew/go/bin:$PATH

export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="brave-browser"
export IMAGE="feh"
export PAGER="moar"

export FILE_EXPLORER_G="pcmanfm"
export FILE_EXPLORER_T="ranger"

