# dotfiles
Void Linux - configuration files and scripts

Managed using GNU stow

`for i in ./*; do file $i | grep "broken symbolic link" && del $i; done`
clears broken symlinks from directory (run from ~/.local/bin)

cloned nano emacs and evil mode from
https://github.com/rougier/nano-emacs
and
https://github.com/emacs-evil/evil
in $XDG\_CONFIG\_HOME/emacs/

desktop and lock screen wallpaper are set by
symlinking selected images to
$XDG\_DATA\_HOME/wallpaper and $XDG\_DATA\_HOME/lockpaper

in `mailsync`, the SIGUSR1 trap function only takes effect after snooze exits
