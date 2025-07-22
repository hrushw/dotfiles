export HISTFILE=$XDG_STATE_HOME/bash/history
export HISTSIZE=-1

source $XDG_CONFIG_HOME/bash/aliases.bash
source $XDG_CONFIG_HOME/bash/prompt.bash
source $XDG_CONFIG_HOME/bash/fzf_integration.bash

[ "$TERM" = "eterm-color" ] && alias vim='echo "vim is not supported inside eterm"'
command -v zoxide &>/dev/null && eval "$(zoxide init bash)"

set -o vi
eval $(dircolors)
cls

# History
# if [ -f .bash_history ]; then
# 	export HISTFILE=$PWD/.bash_history
# else
# 	export HISTFILE=$XDG_STATE_HOME/bash/history
# fi
# [ -f .python_history ] && export PYTHON_HISTORY=".python_history"
