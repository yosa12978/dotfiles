export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/go/bin"
export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
export PATH="$PATH:$JAVA_HOME/bin"