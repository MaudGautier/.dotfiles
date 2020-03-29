# Environment variables

export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="vim"

if [ -d "$HOME/bin" ]; then
    export PATH=$HOME/bin:$PATH
fi

