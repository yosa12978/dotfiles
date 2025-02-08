export BROWSER=chromium
export EDITOR=nvim
export XDG_CONFIG_HOME="/home/yusuf/.config"
export TERMINAL=st # alacritty

# ~/.local/bin directory
export PATH="$PATH:$HOME/.local/bin"

# ~/.local/scripts directory
export PATH="$PATH:$HOME/.local/scripts"

# go install binaries
export PATH="$PATH:$HOME/.go/bin"

# For JAVA
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export PATH="$PATH:$JAVA_HOME/bin"

# fzf
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{**/node_modules/*,**/.git/*,**/.wine/*,**/.vscode/*,**/.venv/*,**/venv/*,**/.terraform/*}"'
