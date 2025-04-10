(add-to-list 'load-path "~/.config/emacs/lisp/")
(load "emacsrc.el")

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
