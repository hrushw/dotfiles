#!/usr/bin/env bash
# .bashrc

# If not running interactively, do nothing
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

source $XDG_CONFIG_HOME/sh/bashrc



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
