#!/bin/sh

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

# Print terminal type and size
tszfmtprint() {
	local term_clr="${B_BLUE}${TERM}${B_WHITE}"
	local cols_clr="${B_CYAN}${COLUMNS}${B_WHITE}"
	local rows_clr="${B_CYAN}${LINES}${B_RED}"
	local shell_clr="${B_BLUE}${SHELL_NAME}${B_RED}"
	echo "${ENDC}${BOLD}${B_RED}[${term_clr} => ${shell_clr}] ${B_WHITE}-${B_RED} [${cols_clr} x ${rows_clr}]${ENDC}"
}

# Colored output
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'


