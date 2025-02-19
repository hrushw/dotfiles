#!/bin/bash

# .bash_profile

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR=vim

# make other programs conform to XDG directories
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export XCURSOR_PATH="/usr/share/icons:~/.local/share/icons"

if ! [[ "$PATH" =~ "$HOME/.local/bin" ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.scripts" ]]; then
    export PATH="$HOME/.scripts:$PATH"
fi

