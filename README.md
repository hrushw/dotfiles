# dotfiles
Void Linux - configuration files and scripts

`for i in ./*; do file $i | grep "broken symbolic link" && del $i; done` clears broken symlinks from directory

cloned nano emacs and evil mode from
https://github.com/rougier/nano-emacs
and
https://github.com/emacs-evil/evil
in $XDG\_CONFIG\_HOME/emacs/

desktop and lock screen wallpaper are set by
symlinking selected images to
$XDG\_DATA\_HOME/wallpaper and $XDG\_DATA\_HOME/lockpaper
