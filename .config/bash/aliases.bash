# Colored output
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

alias ll='ls -lGh'
alias lv='ls -1'
alias lla='ll -a'
alias lva='lv -a'

alias cl='cls; l'
alias cla='cls; la'

alias clt='cls; tree'
alias clta='cls; tree -a'

alias cll='cls; ll'
alias clla='cls; lla'
alias clv='cls; lv'
alias clva='cls; lva'


# Aliases
alias fetch='echo; pfetch'
alias clf='cls; fetch'

alias mv="mv -i"
alias rm='echo "rm is disabled, use del"'
alias del='mv -it ~/.local/share/trash/'

alias ..='cd ..'
alias ...='cd ../..'
alias py='python'
alias vimS='vim -S Session.vim'

alias quit="exit"
alias :q="exit"
alias q="exit"

# alias nsxiv="nsxiv --anti-alias=no"


alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
# stops annoying font warning
alias ngspice='LC_CTYPE=C ngspice'

alias FZF="fzf --style minimal --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"
alias o='uopen $(FZF)'
alias v='vim $(FZF)'

alias gg='g ~'
alias gq='pushd ~ &>/dev/null'
alias G='popd &>/dev/null'
