export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source <(fzf --zsh)
