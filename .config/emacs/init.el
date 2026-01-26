(load-theme 'gruber-darker t)

;; emacs reflux files
(setq custom-file "~/.config/emacs/emacs-custom.el"
      recentf-save-file "~/.local/state/emacs/recentf"
      bookmark-default-file "~/.config/emacs/bookmarks"
      savehist-file "~/.local/state/emacs/history"
      backup-directory-alist '(("." . "~/.local/state/emacs/backups")))

(setq make-backup-files t
	  backup-by-copying t)

(load custom-file)
(savehist-mode 1)

; enable melpa
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

; window settings
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(undecorated . t))
(add-to-list 'default-frame-alist '(font . "Cozette-24"))

;; quieter emacs
(setq-default inhibit-startup-screen t ; no startup screen
			  initial-buffer-choice nil
			  initial-scratch-message nil
			  delete-old-versions t)




; disable ui elements
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

; tab bar customization
(set-face-attribute 'tab-bar-tab nil :box nil)
(setq tab-bar-show t
	  tab-bar-button-margin 2
	  tab-bar-button-relief 0
	  tab-bar-tab-hints t) ; adding a space before the hint is beyond my abilities

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
(setq-default tab-width 4
			  indent-tabs-mode t
			  tab-always-indent nil
			  backward-delete-char-untabify-method nil
			  c-basic-offset 4
			  c-tab-always-indent nil
			  c-syntactic-indentation nil)

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

(add-to-list 'org-latex-packages-alist '("" "tikz" t))
(eval-after-load "preview"
  '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzpicture}" t))
(setq org-preview-latex-default-process 'imagemagick)

(setenv "EDITOR" "emacsclient")
; (setenv "PYTHON_BASIC_REPL" "t")

(setq inferior-lisp-program "sbcl")
(plist-put org-format-latex-options :scale 1.5)
