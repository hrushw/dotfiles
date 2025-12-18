SHELL_NAME="sh"

. $XDG_CONFIG_HOME/sh/colors.sh
. $XDG_CONFIG_HOME/sh/functions.sh
. $XDG_CONFIG_HOME/sh/aliases.sh

PS1=$(printf "[$USER@$(hostname)] : [ - ]\n[$]> ")

_common_sh_init
