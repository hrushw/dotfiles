(add-to-list 'load-path "~/.config/emacs/nano-emacs/")
(load "nano.el")
(nano-theme-set-dark)
(nano-refresh-theme)
; overriding variables
(setq recentf-save-file "~/.local/state/emacs/recentf")
(setq bookmark-default-file "~/.config/emacs/bookmarks")
(setq nano-font-family-monospaced "RobotoMono Nerd Font Mono")
(setq backup-directory-alist '(("." . "~/.local/state/emacs/backups")))

(setq savehist-file "~/.local/state/emacs/history")
(savehist-mode 1)
(nano-refresh-theme)

; disable ui elements
(menu-bar-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)

; tab bar customization
(setq tab-bar-show t)
(set-face-attribute 'tab-bar nil :foreground nano-color-foreground)
(set-face-attribute 'tab-bar nil :background nano-color-background)
(set-face-attribute 'tab-bar-tab nil :foreground nano-color-foreground)
(set-face-attribute 'tab-bar-tab nil :background nano-color-background)
(set-face-attribute 'tab-bar-tab-inactive nil :foreground nano-color-foreground)
(set-face-attribute 'tab-bar-tab-inactive nil :background nano-color-faded)
; (set-face-attribute 'tab-bar-tab nil :box '(:line-width 1 :color nano-color-faded)) no idea why this fails
(set-face-attribute 'tab-bar-tab nil :box nil)
(setq tab-bar-button-margin 2)
(setq tab-bar-button-relief 0)
(setq tab-bar-tab-hints t) ; adding a space before the hint is beyond my abilities

; adding a text editor
(add-to-list 'load-path "~/.config/emacs/evil/")
(setq evil-want-C-u-scroll t)
(load "evil.el")
(evil-set-undo-system 'undo-redo)
(evil-mode 1)

; mu4e
; (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")
; (load "mu4e.el")

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

(require 'org)
(setq org-tags-column 0)
(define-key org-mode-map (kbd "M-<return>") 'org-meta-return)
; (define-key org-mode-map (kbd "M-i .") (lambda () (interactive) (insert-char 8203) ))

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

(setenv "EDITOR" "emacsclient")
; (setenv "PYTHON_BASIC_REPL" "t")

