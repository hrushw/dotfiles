#!/bin/sh

cls() {
	# reset and clear to fix issues with tabs -4 on kitty
	tput reset
	tabs -4
	tput clear
	! [ "$NOHEADER" ] && tszfmtprint
}

_common_sh_init() {
	export LESS='-R --use-color -Dd+r$Du+b$ +0'
	export MANROFFOPT="-c"
	export PAGER="bat --paging=always --style changes,grid,numbers,snip"

	case "$TERM" in
		"eterm-color")
			alias vim='echo "vim is not supported inside eterm"';;
		*)
			set -o vi;;
	esac

	# ocaml completion
	test -f "$HOME/.opam/opam-init/complete.sh" && . $HOME/.opam/opam-init/complete.sh

	if [ "$NOCLEAR" ]; then
		! [ "$NOHEADER" ] && tszfmtprint
		export NOCLEAR=""
	else
		cls
	fi
}

