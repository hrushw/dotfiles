set_prompt() {
	# Prompt
	local RED="\\[\\e[1;31m\\]"
	local GREEN="\\[\\e[1;32m\\]"
	local YELLOW="\\[\\e[1;33m\\]"
	local BLUE="\\[\\e[1;34m\\]"
	local MAGENTA="\\[\\e[1;35m\\]"
	local CYAN="\\[\\e[1;36m\\]"
	local WHITE="\\[\\e[1;37m\\]"
	local ENDC="\\[\\e[0m\\]"

	PS1="${RED}[${GREEN}\u${ENDC}@${GREEN}\h${ENDC}: ${CYAN}\W${RED} ]${ENDC}\$ "
}
set_prompt

