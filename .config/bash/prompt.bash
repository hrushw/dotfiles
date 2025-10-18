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

	local BLACK="\[$(tput setaf 2)\]"
	local RED="\[$(tput setaf 1)\]"
	local GREEN="\[$(tput setaf 2)\]"
	local YELLOW="\[$(tput setaf 3)\]"
	local BLUE="\[$(tput setaf 4)\]"
	local MAGENTA="\[$(tput setaf 5)\]"
	local CYAN="\[$(tput setaf 6)\]"
	local WHITE="\[$(tput setaf 7)\]"

	local ENDC="\[$(tput sgr0)\]"
	local BOLD="\[$(tput bold)\]"

	# use bright colors if supported by the terminal
	if [ $(($(tput colors) < 16)) ]; then
		local B_RED="$RED"
		local B_GREEN="$GREEN"
		local B_YELLOW="$YELLOW"
		local B_BLUE="$BLUE"
		local B_MAGENTA="$MAGENTA"
		local B_CYAN="$CYAN"
		local B_WHITE="$WHITE"
	else
		local B_RED="\[$(tput setaf 9)\]"
		local B_GREEN="\[$(tput setaf 10)\]"
		local B_YELLOW="\[$(tput setaf 11)\]"
		local B_BLUE="\[$(tput setaf 12)\]"
		local B_MAGENTA="\[$(tput setaf 13)\]"
		local B_CYAN="\[$(tput setaf 14)\]"
		local B_WHITE="\[$(tput setaf 15)\]"
	fi

	PS0=""
	local ps1uhostname="${B_RED}[${B_GREEN}\u${B_WHITE}@${B_GREEN}\h${B_RED}]"
	local ps1dir="${B_RED}[ ${B_CYAN}\w${B_RED} ]"
	local ps1prompt="${B_RED}[${B_WHITE}\$${B_RED}]> "
	PS1="${ENDC}${BOLD}${B_WHITE}${ps1uhostname} : ${ps1dir}\n${ps1prompt}${ENDC}"
	PS2="${ENDC}${BOLD}${B_RED}| ${ENDC}"
	# PS3 does not use \[\] escape sequences
	PS3="$(tput sgr0)$(tput bold)$(tput setaf 9)[$(tput setaf 15)#$(tput setaf 9)]? $(tput sgr0)"
}
set_prompt

