set_prompt() {
	# Prompt
	# local RED="\\[\\e[1;31m\\]"
	# local GREEN="\\[\\e[1;32m\\]"
	# local YELLOW="\\[\\e[1;33m\\]"
	# local BLUE="\\[\\e[1;34m\\]"
	# local MAGENTA="\\[\\e[1;35m\\]"
	# local CYAN="\\[\\e[1;36m\\]"
	# local WHITE="\\[\\e[1;37m\\]"
	# local ENDC="\\[\\e[0m\\]"

	local RED="\[$(tput setaf 1)\]"
	local GREEN="\[$(tput setaf 2)\]"
	local YELLOW="\[$(tput setaf 3)\]"
	local BLUE="\[$(tput setaf 4)\]"
	local MAGENTA="\[$(tput setaf 5)\]"
	local CYAN="\[$(tput setaf 6)\]"
	local WHITE="\[$(tput setaf 7)\]"
	local ENDC="\[$(tput sgr0)\]"

	local BOLD="\[$(tput bold)\]"

	PS0=""
	PS1="${ENDC}${BOLD}${RED}[${GREEN}\u${WHITE}@${GREEN}\h${RED}]${WHITE} : ${RED}[ ${CYAN}\w${RED} ]\n${RED}[${WHITE}\$${RED}]> ${ENDC}"
	PS2="${ENDC}${BOLD}${RED}| ${ENDC}"
	# PS3 does not use \[\] escape sequences
	PS3="$(tput sgr0)$(tput bold)$(tput setaf 1)[$(tput setaf 7)#$(tput setaf 1)]? $(tput sgr0)"
}
set_prompt

