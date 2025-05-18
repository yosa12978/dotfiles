export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"
plugins=(git vi-mode)

VI_MODE_SET_CURSOR=true
export KEYTIMEOUT=1

zmodload -i zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source <(fzf --zsh)

eval "$(_OTPY_COMPLETE=zsh_source otpy)"

