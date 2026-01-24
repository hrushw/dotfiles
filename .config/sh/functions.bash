lc () {
	local termcols=$(set -- $(stty size); builtin echo $2)
	[ $(("$1" < "$termcols")) != '0' ] && stty cols ${1}
	ls --color=auto --group-directories-first -a ${@:2}
	stty cols $termcols
}
alias l='lc 120'

_bash_fzf_integration() {
	eval "$(fzf --bash)"

	# export FZF_CTRL_T_COMMAND=""
	# export FZF_ALT_C_COMMAND=""

	export FZF_CTRL_T_OPTS="
		--walker-skip .git,node_modules,target
		--preview 'fzf-preview.sh {}'
		--bind 'ctrl-/:change-preview-window(down|hidden|)'"
	export FZF_ALT_C_OPTS="
		--walker-skip .git,node_modules,target
		--preview 'tree -C {}'"
	export FZF_CTRL_R_OPTS=""
}

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
	case "$1" in
		"ipy"*)
			if ! [ -e "$1" ]; then
				eval "ipython ${@:2}"
				deactivate
				return
			fi;;
		"exec"*)
			if ! [ -e "$1" ]; then
				eval "${@:2}"
			fi;;
		*)
			eval "python $@"
			;;
	esac
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
					git pull
				else
					echo "ERR_SKIP: no git repository found, ignoring"
				fi

				cd ..;;
		esac
		echo
	done
}

_bash_set_prompt() {
	local ps1uhostname="\[$B_RED\][\[$B_GREEN\]\u\[$B_WHITE\]@\[$B_GREEN\]\h\[$B_RED\]]"
	local ps1dir="\[$B_RED\][ \[$B_CYAN\]\W\[$B_RED\] ]"
	# an extra $BOLD is needed after a newline
	# to help the terminal reprint the prompt correctly on window resize
	# (otherwise boldface disappears on the second line)
	local ps1prompt="\[$BOLD$B_RED\][\[$B_WHITE\]\$\[$B_RED\]]>\[$ENDC\] "

	if [ "$SMALLPROMPT" ]; then
		PS1="\[$ENDC\]$ps1prompt"
	else
		PS1="\[$ENDC$BOLD$B_WHITE\]$ps1uhostname\[$B_WHITE\] : $ps1dir\n$ps1prompt"
	fi
	# PS0="\[$ENDC\]"
	PS2="\[$ENDC$BOLD$B_RED\]| \[$ENDC\]"
	# PS3 does not use \[\] escape sequences
	PS3="$ENDC$BOLD$B_RED[$B_WHITE#$B_RED]? $ENDC"
}

_bash_set_title_updater() {
	case "$TERM" in
		# Kitty already handles title updating
		"xterm-kitty")
			;;
		# Eterm does not have a title and misinterprets relevant escape codes
		"eterm-color")
			;;
		*)
			# Set window title to command currently running
			PS0="\[\e]2;\$(set -- \$(history 1); echo \${@:2}) [ bash: \w ]\a\]"
			# After command execution, display cwd in window title
			local title="\[\e]2;bash : \w\a\]"
			PS1="$title$PS1"
			;;
	esac
}

