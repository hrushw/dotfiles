cmdl() {
	cd $1;
	cls;
	eval $2
}

pyenv() {
	source ~/.venv/bin/activate
	alias ipython='ipython3'
	alias exit='deactivate; unalias exit'
}

pyenvrun() {
	source ~/.venv/bin/activate
	eval "$@"
	deactivate
}
