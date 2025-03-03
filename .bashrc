# .bashrc

# If not running interactively, do nothing
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Environment
export HISTFILE=$XDG_STATE_HOME/bash/history
export HISTSIZE=-1

if command -v bat &>/dev/null; then
	export PAGER="bat --color=always --style=grid"
fi

# Colored output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
export LESS='-R --use-color -Dd+r$Du+b$'

# Aliases
alias cls='tput reset'
alias ll='ls -lh'
alias cll='cls; ll'
alias la='ls -alh'
alias cla='cls; la'
alias ..='cd ..'

if command -v fzf &>/dev/null && command -v fzf-preview.sh &>/dev/null; then
	alias FZF='fzf -m --preview "fzf-preview.sh {}"'
fi

# Prompt
RED="\\[\\e[1;31m\\]"
GREEN="\\[\\e[1;32m\\]"
YELLOW="\\[\\e[1;33m\\]"
BLUE="\\[\\e[1;34m\\]"
MAGENTA="\\[\\e[1;35m\\]"
CYAN="\\[\\e[1;36m\\]"
WHITE="\\[\\e[1;37m\\]"
ENDC="\\[\\e[0m\\]"

PS1="${RED}[${GREEN}\u${ENDC}@${GREEN}\h${ENDC}: ${CYAN}\W${RED} ]${ENDC}\$ "

if command -v zoxide &>/dev/null; then
	eval "$(zoxide init bash)"
fi

set -o vi

