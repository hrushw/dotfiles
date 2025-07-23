cmdl() {
	cd $1;
	cls;
	eval $2
}

mdview() {
	lowdown -t term $1 | bat --paging=always
}
