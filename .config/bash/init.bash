export HISTFILE=$XDG_STATE_HOME/bash/history
export HISTSIZE=-1

source $XDG_CONFIG_HOME/bash/functions.bash
source $XDG_CONFIG_HOME/bash/aliases.bash
source $XDG_CONFIG_HOME/bash/prompt.bash
source $XDG_CONFIG_HOME/bash/fzf_integration.bash

export LESS='-R --use-color -Dd+r$Du+b$ +0'
export MANROFFOPT="-c"

[ "$TERM" = "eterm-color" ] && alias vim='echo "vim is not supported inside eterm"'
# command -v zoxide &>/dev/null && eval "$(zoxide init bash)"

eval $(dircolors)
set -o vi
! [ "$NOHEADER" ] && cls

# History
# if [ -f .bash_history ]; then
# 	export HISTFILE=$PWD/.bash_history
# else
# 	export HISTFILE=$XDG_STATE_HOME/bash/history
# fi
# [ -f .python_history ] && export PYTHON_HISTORY=".python_history"
