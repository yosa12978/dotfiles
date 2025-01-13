export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"
plugins=(git vi-mode)

VI_MODE_SET_CURSOR=true
export KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source <(fzf --zsh)
