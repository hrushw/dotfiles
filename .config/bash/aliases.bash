# Colored output
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# Aliases
alias fetch='echo; pfetch'
alias cls='reset; tabs -4'
alias clf='cls; fetch'

alias ll='ls -lh'
alias lv='ls -1'
alias lva='ls -a1'
alias cll='cls; ll'
alias la='ls -alh'
alias cla='cls; la'
alias clt='cls; tree'
alias dcl='dirs -c'

alias mv="mv -i"
alias rm='echo "rm is disabled, use del"'
alias del='mv -it ~/.local/share/trash/'

alias ..='cd ..'
alias ...='cd ../..'
alias q="exit"
alias :q="exit"
alias py='python'
alias vimS='vim -S Session.vim'

# stops annoying font warning
alias ngspice='LC_CTYPE=C ngspice'

alias FZF="fzf --style minimal --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"

