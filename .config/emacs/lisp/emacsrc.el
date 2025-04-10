(add-to-list 'load-path "~/.config/emacs/nano-emacs/")
(load "nano.el")
(nano-theme-set-dark)
(nano-refresh-theme)

; disable ui elements
(menu-bar-mode 0)
(tool-bar-mode -0)
(scroll-bar-mode 0)

; adding a text editor
(add-to-list 'load-path "~/.config/emacs/evil/")
(load "evil.el")
(evil-mode 1)

(setq-default inhibit-startup-screen t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; relative line numbers
(setq-default display-line-numbers-type 'relative)
(set-face-attribute 'line-number-current-line nil :weight 'bold)
(global-display-line-numbers-mode)
(global-hl-line-mode)

(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default tab-always-indent nil)
(setq-default backward-delete-char-untabify-method nil)

(setq-default c-basic-offset 4)
(setq-default c-tab-always-indent nil)
(setq-default c-syntactic-indentation nil)
