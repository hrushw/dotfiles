# Colored output
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# Aliases
alias fetch='echo; pfetch'
alias clf='cls; fetch'

alias ll='ls -lGh'
alias lv='ls -1'
alias lla='ll -a'
alias lva='lv -a'

alias clt='cls; tree'
alias clta='cls; tree -a'

alias cll='cls; ll'
alias clla='cls; lla'
alias clv='cls; lv'
alias clva='cls; lva'

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

