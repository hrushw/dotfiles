# Aliases

alias mv="mv -i"
alias rm='echo "rm is disabled, use del"'
alias pkill='pkill -x'
alias del='mv -it ~/.local/share/trash/'

# stops annoying font warning
alias ngspice='LC_CTYPE=C ngspice'

# prevent wget from dumping history into home
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'

alias py='python'
alias q="exit"

alias ll='ls -alh'
alias cll='cls; ll'

alias FZF="fzf --style minimal --bind 'focus:transform-header:file --brief {}' --preview 'fzf-preview.sh {}'"
alias FZFD="fzf --style minimal --bind 'focus:transform-header:file --brief {}' --preview 'tree -C {}' --walker=dir"

# Fuzzification
alias of="uopen \"\$(FZF)\""
alias vf="vim \"\$(FZF)\""
alias gf="cd \"\$(FZFD)\""
