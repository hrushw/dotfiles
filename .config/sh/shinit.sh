case "$0" in
	"dash" | "ash" | "sh" | "ksh" | "mksh" | "ksh93")
		SHELL_NAME="$0";;
	*)
		SHELL_NAME="sh";;
esac


. $XDG_CONFIG_HOME/sh/colors.sh
. $XDG_CONFIG_HOME/sh/functions.sh
. $XDG_CONFIG_HOME/sh/aliases.sh

ps1uhostname="$B_RED[$B_GREEN${USER}$B_WHITE@$B_GREEN$(hostname)$B_RED]$B_WHITE"
ps1dir="$B_RED[ $B_CYAN- $B_RED]"
ps1prompt="$BOLD$B_RED[$B_WHITE\$$B_RED]> $ENDC"

PS1=$(printf "$ENDC$BOLD$ps1uhostname : $ps1dir\n$ps1prompt")
PS2="$ENDC$BOLD$B_RED| $ENDC"

_common_sh_init
