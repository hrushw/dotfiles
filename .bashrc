# .bashrc

# If not running interactively, do nothing
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Environment
if [ -f .bash_history ]; then
	export HISTFILE=$PWD/.bash_history
else
	export HISTFILE=$XDG_STATE_HOME/bash/history
fi
export HISTSIZE=-1

[ -f .python_history ] && export PYTHON_HISTORY=".python_history"

# Colored output
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
export LESS='-R --use-color -Dd+r$Du+b$'
export MANROFFOPT="-c"

# Aliases
alias fetch='echo; pfetch; echo'
alias cls='tput reset; fetch'
alias ll='ls -lh'
alias cll='tput reset; ll'
alias la='ls -alh'
alias cla='tput reset; la'
alias ..='cd ..'

alias rm='echo "rm is disabled, use del"'
alias del='mv -it ~/.local/share/trash/'

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

# command -v zoxide &>/dev/null && eval "$(zoxide init bash)"
alias z='cd'

# FZF shell integration
# Ctrl+T : autocomplete files with fzf
# Ctrl+R : search command history
# Alt+C : change directory
eval "$(fzf --bash)"

export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | wl-copy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

export FZF_CTRL_T_OPTS="
  --style minimal
  --walker-skip .git,node_modules,target
  --preview 'fzf-preview.sh {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

export FZF_ALT_C_OPTS="
  --style minimal
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"

alias FZF="fzf --style minimal --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"
tput reset; fetch


[ "$TERM" = "eterm-color" ] && alias vim='echo "vim is not supported inside eterm"'
