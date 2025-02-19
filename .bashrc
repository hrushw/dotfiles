# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Environment
export HISTFILE=$XDG_STATE_HOME/bash/history
export HISTSIZE=-1

export PAGER="bat --color=always --style=grid"

# Aliases
alias cls='tput reset'
alias ll='ls -lh'
alias cll='cls; ll'
alias la='ls -alh'
alias cla='cls; la'
alias ..='cd ..'

alias FZF='fzf -m --preview "fzf-preview.sh {}"'

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

eval "$(zoxide init bash)"

set -o vi

