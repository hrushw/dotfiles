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

	eval "python $@"
	deactivate
}

