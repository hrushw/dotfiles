#!/usr/bin/env bash

source "$HOME/.profile"
source "$HOME/.bashrc"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:"${XDG_DATA_HOME:-$HOME/.local/share}/juliaup/bin":*)
        ;;

    *)
        export PATH="${XDG_DATA_HOME:-$HOME/.local/share}/juliaup/bin${PATH:+:${PATH}}"
        ;;
esac

# Tab completion for juliaup and julia channel selection
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/completions/bash.sh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/completions/bash.sh"

# <<< juliaup initialize <<<
