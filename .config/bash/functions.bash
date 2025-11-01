spawn() {
	echo "$@"
	eval "$@"
}

g() {
	if [ -n "$1" ]; then
		local target=$(fzf --walker-root=$1 --walker=dir,hidden --walker-skip .git --preview 'tree -C {}')
	else
		local target=$(fzf --walker=dir,hidden --walker-skip .git --preview 'tree -C {}')
	fi
	[ -n "$target" ] && pushd "$target" &>/dev/null
}
alias clfd='cls; cfd'

cmdl() {
	cd $1;
	cls;
	eval $2
}

# limit ls output to 80 colums wide to improve readability
lc () {
	local termcols=$(set -- $(stty size); builtin echo $2)
	[ $(("$1" < "$termcols")) != '0' ] && stty cols ${1}
	ls --color=auto --group-directories-first ${@:2}
	stty cols $termcols
}
alias l='lc 120'
alias la='l -a'

alias cl='cls; l'
alias cla='cls; la'

tszfmtprint() {
	set -- $(stty size)
	local rows=$1
	local cols=$2
	local term_clr="${B_BLUE}${TERM}${B_RED}"
	local cols_clr="${B_CYAN}${cols}${B_WHITE}"
	local rows_clr="${B_CYAN}${rows}${B_RED}"
	echo "${ENDC}${BOLD}${B_RED}[${term_clr}] ${B_WHITE}-${B_RED} [${cols_clr} x ${rows_clr}]${ENDC}"
}

cls() {
	tput reset
	tabs -4
	tszfmtprint
}

# run command in python venv
pyenv() {
	envactor="$HOME/.venv/bin/activate"
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


