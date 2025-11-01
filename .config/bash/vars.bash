export HISTFILE=$XDG_STATE_HOME/bash/history
export HISTSIZE=-1
export LESS='-R --use-color -Dd+r$Du+b$ +0'
export MANROFFOPT="-c"

# Prompt color variables - must be loaded before prompt.bash
BLACK="$(tput setaf 0)"
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
WHITE="$(tput setaf 7)"

ENDC="$(tput sgr0)"
BOLD="$(tput bold)"

if [ $(($(tput colors) > 16)) = "0" ]; then
	B_BLACK="$BLACK"
	B_RED="$RED"
	B_GREEN="$GREEN"
	B_YELLOW="$YELLOW"
	B_BLUE="$BLUE"
	B_MAGENTA="$MAGENTA"
	B_CYAN="$CYAN"
	B_WHITE="$WHITE"
else
	B_BLACK="$(tput setaf 8)"
	B_RED="$(tput setaf 9)"
	B_GREEN="$(tput setaf 10)"
	B_YELLOW="$(tput setaf 11)"
	B_BLUE="$(tput setaf 12)"
	B_MAGENTA="$(tput setaf 13)"
	B_CYAN="$(tput setaf 14)"
	B_WHITE="$(tput setaf 15)"
fi

[ $TERM = "st-256color-kitty" ] && export KITTY_WINDOW_ID=t
