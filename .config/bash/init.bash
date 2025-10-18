export HISTFILE=$XDG_STATE_HOME/bash/history
export HISTSIZE=-1

source $XDG_CONFIG_HOME/bash/functions.bash
source $XDG_CONFIG_HOME/bash/aliases.bash
source $XDG_CONFIG_HOME/bash/prompt.bash
source $XDG_CONFIG_HOME/bash/fzf_integration.bash

export LESS='-R --use-color -Dd+r$Du+b$ +0'
export MANROFFOPT="-c"

if [ "$TERM" = "eterm-color" ]; then
	alias vim='echo "vim is not supported inside eterm"'
else
	set -o vi
fi

eval $(dircolors)
! [ "$NOHEADER" ] && clf

