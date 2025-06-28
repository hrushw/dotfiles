(add-to-list 'load-path "~/.config/emacs/nano-emacs/")
(load "nano.el")
(nano-theme-set-dark)
(nano-refresh-theme)

; disable ui elements
(menu-bar-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)

; adding a text editor
(add-to-list 'load-path "~/.config/emacs/evil/")
(setq evil-want-C-u-scroll t)
(load "evil.el")
(evil-set-undo-system 'undo-redo)
(evil-mode 1)

; window settings
(setq-default inhibit-startup-screen t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; relative line numbers
(setq-default display-line-numbers-type 'relative)
(set-face-attribute 'line-number-current-line nil :weight 'bold)
(global-display-line-numbers-mode)
(global-hl-line-mode)

(global-visual-line-mode t) ; wrap text

; indentation settings
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default tab-always-indent nil)
(setq-default backward-delete-char-untabify-method nil)

(setq-default c-basic-offset 4)
(setq-default c-tab-always-indent nil)
(setq-default c-syntactic-indentation nil)

(setq explicit-shell-file-name "/usr/bin/bash")
(setq shell-file-name "bash")
(setq vc-follow-symlinks nil)

(setq browse-url-generic-program "qutebrowser")
(setq browse-url-browser-function 'browse-url-generic)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (python . t)
   (latex . t)
   (forth . t)
   (haskell . t)
   (lisp . t)
   (awk . t)
   (emacs-lisp . t)))

