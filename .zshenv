export BROWSER=firefox
export EDITOR=nvim
export XDG_CONFIG_HOME="/home/yusuf/.config"
export TERMINAL=alacritty

# ~/.local/bin directory
export PATH="$PATH:$HOME/.local/bin"

# go install binaries
export PATH="$PATH:$HOME/go/bin"

# For JAVA
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export PATH="$PATH:$JAVA_HOME/bin"
