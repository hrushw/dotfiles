# run command in python venv
pyenv() {
	envactor="$XDG_DATA_HOME/venv/bin/activate"
	case $1 in "le" | "-le" | "el" | "-el")
		set -- "-l" "-e" "${@:2}"
	esac

	case $1 in "l" | "-l" | "local")
		envactor=./.venv/bin/activate
		set -- "${@:2}";;
	esac

	case $1 in "e" | "-e" | "enter")
		source "$envactor"
		alias exit='deactivate; unalias exit'
		return;;
	esac

	source "$envactor"
	case "$1" in "ipy"*)
		if ! [ -e "$1" ]; then
			eval "ipython ${@:2}"
			deactivate
			return
		fi;;
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

# Recursively update cloned git repositories in a folder
gitpullrecurse() {
	for dir in $(ls); do
		test -d "$dir" -a ! -L "$dir" || continue

		case "$dir" in
			"__"*)
				echo "Ignoring directory: $dir";;

			"_"*)
				echo "Recursing into directory: $dir"
				cd "$dir"
				gitpullrecurse
				cd ..;;

			*)
				cd "$dir"
				echo "Entering directory: $PWD"

				if test -d ".git"; then
					echo "git repository found, updating..."
					spawn git pull
				else
					echo "ERR_SKIP: no git repository found, ignoring"
				fi

				cd ..;;
		esac
		echo
	done
}

# Fancy colored prompt
set_prompt() {
	# use bright colors if supported by the terminal
	PS0=""
	local ps1uhostname="\[${B_RED}\][\[${B_GREEN}\]\u\[${B_WHITE}\]@\[${B_GREEN}\]\h\[${B_RED}\]]"
	local ps1dir="\[${B_RED}\][ \[${B_CYAN}\]\w\[${B_RED}\] ]"
	local ps1prompt="\[${B_RED}\][\[${B_WHITE}\]\$\[${B_RED}\]]> "
	PS1="\[${ENDC}${BOLD}${B_WHITE}\]${ps1uhostname}${B_WHITE} : ${ps1dir}\n${ps1prompt}\[${ENDC}\]"
	PS2="\[${ENDC}${BOLD}${B_RED}\]| \[${ENDC}\]"
	# PS3 does not use \[\] escape sequences
	PS3="${ENDC}${BOLD}$(tput setaf 9)[$(tput setaf 15)#$(tput setaf 9)]? $(tput sgr0)"
}

