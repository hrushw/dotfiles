#!/bin/sh

# Add local bin to path

case ":$PATH:" in
	*:"$HOME/.local/bin":*)
		;;
	*)
		PATH="$HOME/.local/bin:$PATH"
		;;
esac

export LIBRARY_PATH="/usr/local/lib64:/usr/local/lib:$HOME/.local/lib"
export LD_LIBRARY_PATH="$LIBRARY_PATH"
export CPATH="/usr/local/include:$HOME/.local/include"

# forgot why i set this
# apparantly used to determine sort order
export LC_COLLATE=C

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# vi(1) startup commands
export EXINIT="set ai ic nu prompt ts=4 sw=4 nosm showmode warn ws"
export NEXINIT=$EXINIT

export GUILE_AUTO_COMPILE=0

# settings
export EDITOR="vim"
export BROWSER="firefox"
export GTK_THEME=Breeze:dark
export CC=gcc
export TERMCMD="xterm"

# not using wayland currently
# export GRIM_DEFAULT_DIR=$XDG_DATA_HOME/screenshots

# causes problems with Makefiles
# export CFLAGS="-Wall -Wextra -Wpedantic -Wvla"

# generally not useful
# export CDPATH=:~

# not using bemenu currently
# export BEMENU_OPTS='-b -fn "Terminus 12px"'

# make other programs conform to XDG directories
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

export ASYMPTOTE_CONFIG="$XDG_CONFIG_HOME/asymptote/config.asy"

export SVDIR="$XDG_CONFIG_HOME/service"
export XCURSOR_PATH="/usr/share/icons:~/.local/share/icons"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg/"
export LESSHISTFILE="$XDG_STATE_HOME/lesshst"
export RLWRAP_HOME="$XDG_STATE_HOME/readline"

export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"

export MBLAZE="$XDG_CONFIG_HOME/mblaze"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/config.ini"
export MAILCAPS="$XDG_CONFIG_HOME/mailcap"

export TASKDATA="$XDG_DATA_HOME/task"
export VIT_DIR="$XDG_CONFIG_HOME/vit"

export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"

export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_DATA_HOME/go/mod"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"

export ZDOTDIR="$XDG_CONFIG_HOME/sh"
export ENV="$XDG_CONFIG_HOME/sh/shinit.sh"

# make guile shut up
export GUILE_AUTO_COMPILE=0

# set chicken scheme packages to local install
export CHICKEN_INSTALL_REPOSITORY="$HOME/.local/lib/chicken/repo"
export CHICKEN_INSTALL_PREFIX="$HOME/.local"
export CHICKEN_REPOSITORY_PATH="$CHICKEN_INSTALL_REPOSITORY"

# `ls` colors
eval $(dircolors)

# OCaml environment
# eval $(opam env)
