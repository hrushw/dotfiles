# Aliases

alias mv="mv -i"
alias rm='echo "rm is disabled, use del"'
alias del='mv -it ~/.local/share/trash/'

alias FZF="fzf --style minimal --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"

# stops annoying font warning
alias ngspice='LC_CTYPE=C ngspice'

# prevent wget from dumping history into home
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'

alias py='python'
alias q="exit"


