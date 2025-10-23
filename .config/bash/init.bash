source $XDG_CONFIG_HOME/bash/vars.bash
source $XDG_CONFIG_HOME/bash/functions.bash
source $XDG_CONFIG_HOME/bash/aliases.bash
source $XDG_CONFIG_HOME/bash/prompt.bash

if [ "$TERM" = "eterm-color" ]; then
	alias vim='echo "vim is not supported inside eterm"'
else
	set -o vi
fi

eval $(dircolors)
if [ "$NOCLEAR" ]; then
	! [ "$NOHEADER" ] && tszfmtprint
else
	cls
fi

