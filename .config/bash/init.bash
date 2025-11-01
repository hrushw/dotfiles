source $XDG_CONFIG_HOME/bash/colors.bash
source $XDG_CONFIG_HOME/bash/functions.bash
source $XDG_CONFIG_HOME/bash/aliases.bash

export HISTFILE=$XDG_STATE_HOME/bash/history
export HISTSIZE=-1
export LESS='-R --use-color -Dd+r$Du+b$ +0'
export MANROFFOPT="-c"

cls() { tput reset; tabs -4; ! [ "$NOHEADER" ] && tszfmtprint; }

lc () {
	local termcols=$(set -- $(stty size); builtin echo $2)
	[ $(("$1" < "$termcols")) != '0' ] && stty cols ${1}
	ls --color=auto --group-directories-first ${@:2}
	stty cols $termcols
}
alias l='lc 120'

case "$TERM" in
	"st-256color-kitty")
		export KITTY_WINDOW_ID=t;;
	"eterm-color")
		alias vim='echo "vim is not supported inside eterm"';;
	*)
		set -o vi;;
esac

eval $(dircolors)

if [ "$NOCLEAR" ]; then
	! [ "$NOHEADER" ] && tszfmtprint
else
	cls
fi

set_prompt
