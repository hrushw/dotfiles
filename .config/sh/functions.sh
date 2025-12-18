cls() {
	clear
	test $SHELL_NAME != "sh" && printf "\e[3J"
	! [ "$NOHEADER" ] && tszfmtprint
}

FZF() {
	case "$1" in
		"-D")
			FZF "${@:2}" --walker=dir;;
		"-H")
			FZF "${@:2}" --walker-root="$HOME";;
		*)
			fzf --style minimal \
				--preview 'fzf-preview.sh {}' \
				--bind 'focus:transform-header:file --brief {}' \
				"$@";;
	esac
}

_common_sh_init() {
	# On kitty, tabs -4 causes the next line to be printed with spaces upto line end
	# The actual output of tabs -4, `cat -v <(tabs -4)` is also slightly different from st
	# No idea why this happens
	export HISTFILE=$XDG_STATE_HOME/bash/history
	export HISTSIZE=-1
	export LESS='-R --use-color -Dd+r$Du+b$ +0'
	export MANROFFOPT="-c"

	case "$TERM" in
		"eterm-color")
			alias vim='echo "vim is not supported inside eterm"';;
		*)
			set -o vi;;
	esac

	eval $(dircolors)

	tabs -4
	if [ "$NOCLEAR" ]; then
		! [ "$NOHEADER" ] && tszfmtprint
		export NOCLEAR=""
	else
		cls
	fi
}

