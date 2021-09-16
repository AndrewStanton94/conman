# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias theme+="echo $RANDOM_THEME >> ~/.config/zsh/likedThemes.txt"
alias theme-="echo $RANDOM_THEME >> ~/.config/zsh/dislikedThemes.txt"

alias sup="sudo apt update && sudo apt dist-upgrade && sudo apt autoclean && sudo apt autoremove"

alias dr="cd ~/dr2/"
alias drk="cd ~/dr2/keys/"

alias d="cd ~/Dropbox"
alias ss="cd ~/Pictures/scrot/"

alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias ez="$EDITOR ~/.zshrc"
alias sz="source ~/.zshrc"

alias gpc="globalprotect connect"
alias gpd="globalprotect disconnect"
alias gps="globalprotect show --status"

# Load colours from pywal
(cat ~/.cache/wal/sequences &)

source ~/scripts/s.sh
source ~/scripts/ip.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


autoload -Uz compinit colors
colors
compinit
_comp_options+=(globdots)

# Report command running time if it is more than 3 seconds
REPORTTIME=3
# Keep a lot of history
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
# Add commands to history as they are entered, don't wait for shell to exit
setopt INC_APPEND_HISTORY
# Also remember command start time and duration
setopt EXTENDED_HISTORY
# Do not keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS
# Do not remember commands that start with a whitespace
setopt HIST_IGNORE_SPACE
# Correct spelling of all arguments in the command line
setopt CORRECT_ALL
# Enable autocompletion
zstyle ':completion:*' completer _complete _correct _approximate

eval "$(starship init zsh)"
