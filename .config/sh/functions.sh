#!/bin/sh

cls() {
	# reset and clear to fix issues with tabs -4 on kitty
	tput reset
	tabs -4
	tput clear
	! [ "$NOHEADER_" ] && tszfmtprint
}

_common_sh_init() {
	export LESS='-R --use-color -Dd+r$Du+b$ +0'
	export MANROFFOPT="-c"
	export PAGER="bat --paging=always --style changes,grid,numbers,snip"

	if test -n "$INSIDE_EMACS"; then
		alias vim='echo "vim is disabled inside emacs"'
	else
		set -o vi
	fi

	# ocaml completion
	test -f "$HOME/.opam/opam-init/complete.sh" && . $HOME/.opam/opam-init/complete.sh

	if [ "$NOHEADER" ]; then
		export NOHEADER_=t
		export NOHEADER=""
	else
		export NOHEADER_=""
	fi
	if [ "$NOCLEAR" ]; then
		! [ "$NOHEADER_" ] && tszfmtprint
		export NOCLEAR=""
	else
		cls
	fi
}

