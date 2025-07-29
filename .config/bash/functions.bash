cls() {
	tput reset
	fetch
}

cmdl() {
	cd $1;
	cls;
	eval $2
}

# run command in python venv
pyenv() {
	case $1 in "e" | "-e")
		source ~/.venv/bin/activate
		alias exit='deactivate; unalias exit'
		return;;
	esac

	source ~/.venv/bin/activate
	case $1 in
		"ipy"*)
			if ! [ -e "$1" ]; then
				eval "ipython ${@:2}"; deactivate; return
			fi;;
		*)
			;;
	esac

	eval "python $@"
	deactivate
}

newscript() {
	[ -e "$1" ] && { echo "file already exists!"; return -1; }

	case "$2" in
		"bash")
			header="#!/usr/bin/env bash";;
		"sh" | "shell")
			header="#!/bin/sh";;
		"py" | "python")
			header="#!/usr/bin/env python3";;
		*)
			echo "unrecognized script type!"
			return -2;;
	esac

	echo -e "$header\n\n" > "$1"
	chmod +x "$1"

	eval "$EDITOR $1"
}
