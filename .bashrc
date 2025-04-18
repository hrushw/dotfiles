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

# Colored output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
export LESS='-R --use-color -Dd+r$Du+b$'
export MANROFFOPT="-c"

# Aliases
alias cls='tput reset'
alias ll='ls -lh'
alias cll='cls; ll'
alias la='ls -alh'
alias cla='cls; la'
alias ..='cd ..'

alias del='mv -t ~/.local/share/Trash/'

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

set -o vi

command -v zoxide &>/dev/null && eval "$(zoxide init bash)"
