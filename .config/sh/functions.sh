cls() {
	# reset and clear to fix issues with tabs -4 on kitty
	tput reset
	tabs -4
	tput clear
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
	export HISTFILE=$XDG_STATE_HOME/bash/history
	export HISTSIZE=-1
	export LESS='-R --use-color -Dd+r$Du+b$ +0'
	export MANROFFOPT="-c"
	export PAGER="bat --style changes,grid,numbers,snip"

	case "$TERM" in
		"eterm-color")
			alias vim='echo "vim is not supported inside eterm"';;
		*)
			set -o vi;;
	esac

	# ls colors
	eval $(dircolors)

	# ocaml setup
	eval $(opam env)
	test -f "$HOME/.opam/opam-init/complete.sh" && . $HOME/.opam/opam-init/complete.sh

	if [ "$NOCLEAR" ]; then
		! [ "$NOHEADER" ] && tszfmtprint
		export NOCLEAR=""
	else
		cls
	fi
}

