#!/usr/bin/env zsh

export SHELL_NAME="zsh"

# Lines configured by zsh-newuser-install
[ -d "$XDG_STATE_HOME/zsh" ] || mkdir "$XDG_STATE_HOME/zsh"
[ -d "$XDG_CACHE_HOME/zsh" ] || mkdir "$XDG_CACHE_HOME/zsh"

export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=200000
export SAVEHIST=$HISTSIZE
setopt autocd beep extendedglob nomatch
unsetopt notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hrushw/.zshrc'

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
# End of lines added by compinstall

source "$XDG_CONFIG_HOME/sh/colors.sh"
source "$XDG_CONFIG_HOME/sh/functions.sh"
source "$XDG_CONFIG_HOME/sh/aliases.sh"

_zsh_set_prompt() {
	if (($(tput colors) > 16)); then
		PS1=$'%B%F{9}[%F{10}%n%F{15}@%F{10}%m%F{9}]%F{15} : %F{9}[ %F{14}%1~ %F{9}]\n[%F{15}$%F{9}]> %f%b'
		PS2="%B%F{9}| %f%b"
		PS3="%B%F{9}[%F{15}#%F{9}]? %f%b"
	else
		PS1=$'%B%F{1}[%F{2}%n%F{7}@%F{2}%m%F{1}]%F{7} : %F{1}[ %F{6}%1d %F{1}]\n[%F{7}$%F{1}]> %f%b'
		PS2="%B%F{1}| %f%b"
		PS3="%B%F{1}[%F{7}#%F{1}]? %f%b"
	fi
}

_zsh_set_prompt
_common_sh_init

