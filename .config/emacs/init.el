; cloned from https://github.com/rougier/nano-emacs
(add-to-list 'load-path "~/.config/emacs/nano-emacs/")
(load "nano.el")
(nano-theme-set-dark)

; overriding variables
(setq nano-font-family-monospaced "RobotoMono Nerd Font Mono")

(set-face-attribute 'tab-bar nil :foreground nano-color-foreground)
(set-face-attribute 'tab-bar nil :background nano-color-background)
(set-face-attribute 'tab-bar-tab nil :foreground nano-color-foreground)
(set-face-attribute 'tab-bar-tab nil :background nano-color-background)
(set-face-attribute 'tab-bar-tab-inactive nil :foreground nano-color-foreground)
(set-face-attribute 'tab-bar-tab-inactive nil :background nano-color-faded)

; (set-face-attribute 'tab-bar-tab nil :box '(:line-width 1 :color nano-color-faded)) no idea why this fails

(nano-refresh-theme)

; clear window-setup-hook (nano adds a splash that disables the menubar)
; (setq window-setup-hook ())

;; mu4e
; (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")
; (load "mu4e.el")

; emacs reflux files
(setq custom-file "~/.config/emacs/emacs-custom.el")
(setq recentf-save-file "~/.local/state/emacs/recentf")
(setq bookmark-default-file "~/.config/emacs/bookmarks")
(setq savehist-file "~/.local/state/emacs/history")
(setq backup-directory-alist '(("." . "~/.local/state/emacs/backups")))

(load custom-file)
(savehist-mode 1)

; enable melpa
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

; window settings
(setq-default inhibit-startup-screen t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(undecorated . t))

; disable ui elements
(menu-bar-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)

; tab bar customization
(setq tab-bar-show t)
(set-face-attribute 'tab-bar-tab nil :box nil)
(setq tab-bar-button-margin 2)
(setq tab-bar-button-relief 0)
(setq tab-bar-tab-hints t) ; adding a space before the hint is beyond my abilities

; adding a text editor
; cloned from https://github.com/emacs-evil/evil
(add-to-list 'load-path "~/.config/emacs/evil/")
(setq evil-want-C-u-scroll t)
(load "evil.el")
(evil-set-undo-system 'undo-redo)
(evil-mode 1)

; Ido mode
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)
(setq ido-enable-regexp t)

; start in home
(setq default-directory "~")

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

(setq browse-url-generic-program "firefox")
(setq browse-url-browser-function 'browse-url-generic)

(global-set-key (kbd "C-x k") 'kill-current-buffer)

(require 'org)
(setq org-tags-column 0)
(define-key org-mode-map (kbd "M-<return>") 'org-meta-return)
(setq org-edit-src-content-indentation 0)
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

(setq inferior-lisp-program "sbcl")
(plist-put org-format-latex-options :scale 1.5)
