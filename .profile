#!/bin/bash

# .bash_profile

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# settings
export EDITOR="vim"
export BROWSER="qutebrowser"
export GTK_THEME=Breeze:dark
export EXINIT="set ai ap ic nu prompt ts=4 sw=4 nosm showmode warn ws"
export NEXINIT=$EXINIT
export CC=gcc
export CFLAGS="-Wall -Wextra -Wpedantic -Wvla"
# export CDPATH=:~
export LC_COLLATE=C
export BEMENU_OPTS='-b -fn "Terminus 12px"'

# make other programs conform to XDG directories
export SVDIR="$XDG_CONFIG_HOME/service"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export XCURSOR_PATH="/usr/share/icons:~/.local/share/icons"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg/"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export LESSHISTFILE="$XDG_STATE_HOME/lesshst"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export MBLAZE="$XDG_CONFIG_HOME/mblaze"
export TASKDATA="$XDG_DATA_HOME/task"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"

if ! [[ "$PATH" =~ "$HOME/.local/bin" ]]; then
    [ -e "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.scripts" ]]; then
    [ -e "$HOME/.scripts" ] && export PATH="$HOME/.scripts:$PATH"
fi


