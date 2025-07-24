# Colored output
alias ls='ls --color=auto --hyperlink=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# Aliases
alias fetch='echo; pfetch; echo'
alias cls='tput reset; fetch'
alias ll='ls -lh'
alias cll='cls; ll'
alias la='ls -alh'
alias cla='cls; la'
alias clt='cls; tree'
alias ..='cd ..'

alias mv="mv -i"
alias rm='echo "rm is disabled, use del"'
alias del='mv -it ~/.local/share/trash/'

alias :q="exit"
