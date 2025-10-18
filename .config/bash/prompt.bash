# Prompt
set_prompt() {
	# use bright colors if supported by the terminal
	PS0=""
	local ps1uhostname="\[${B_RED}\][\[${B_GREEN}\]\u\[${B_WHITE}\]@\[${B_GREEN}\]\h\[${B_RED}\]]"
	local ps1dir="\[${B_RED}\][ \[${B_CYAN}\]\w\[${B_RED}\] ]"
	local ps1prompt="\[${B_RED}\][\[${B_WHITE}\]\$\[${B_RED}\]]> "
	PS1="\[${ENDC}${BOLD}${B_WHITE}\]${ps1uhostname}${B_WHITE} : ${ps1dir}\n${ps1prompt}\[${ENDC}\]"
	PS2="\[${ENDC}${BOLD}${B_RED}\]| \[${ENDC}\]"
	# PS3 does not use \[\] escape sequences
	PS3="${ENDC}${BOLD}$(tput setaf 9)[$(tput setaf 15)#$(tput setaf 9)]? $(tput sgr0)"
}
set_prompt
PS1BASE="$PS1"

