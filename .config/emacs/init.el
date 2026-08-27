(use-package package
  :custom
  (package-archives
   (delete-dups
    (append '(("melpa" . "https://melpa.org/packages"))
	    package-archives))))

(use-package emacs
  :custom
  (default-frame-alist
   '((fullscreen . maximized)
     (undecorated . t)
     (font . "SpaceMono Nerd Font-16")
     (vertical-scroll-bars . nil)
     (horizontal-scroll-bars . nil)))
  (inhibit-startup-screen t)
  (initial-scratch-message nil))

(use-package custom
  :custom
  (custom-enabled-themes '(modus-operandi-deuteranopia)))

(use-package cus-edit
  :custom
  (custom-file
   (substitute-in-file-name "${XDG_CONFIG_HOME}/emacs/emacs-custom.el")))

(use-package simple
  :custom
  (global-visual-line-mode t)
  :bind
  (("C-x k" . kill-current-buffer)))

(use-package files
  :custom
  (auto-save-default nil)
  (backup-directory-alist
    '(("." . (substitute-in-file-name "${XDG_STATE_HOME}/emacs/backups"))))
  (make-backup-files t)
  (backup-by-copying t))

(use-package tool-bar
  :custom
  (tool-bar-mode nil))

(use-package menu-bar
  :custom
  (menu-bar-mode nil))

(use-package scroll-bar
  :custom
  (scroll-bar-mode nil))

(use-package ido
  :custom
  (ido-enable-flex-matching t)
  (ido-enable-regexp t)
  (ido-mode 'both)
  (ido-everywhere t))

(use-package recentf
  :custom
  (recentf-save-file
   (substitute-in-file-name
    "${XDG_STATE_HOME}/emacs/recentf")))

(use-package bookmark
  :custom
  (bookmark-default-file
   (substitute-in-file-name
    "${XDG_CONFIG_HOME}/emacs/bookmarks")))

(use-package savehist
  :custom
  (savehist-file
   (substitute-in-file-name
    "${XDG_STATE_HOME}/emacs/history"))
  (savehist-mode t))

(use-package vc-hooks
  :custom
  (vc-follow-symlinks t))

(use-package display-line-numbers
  :custom
  (display-line-numbers 'relative))

(use-package org
  :custom
  (org-tags-column 0)
  (org-startup-indent t)
  (org-fold-catch-invisible-edits 'show))

(use-package evil
  :ensure t
  :custom
  (evil-want-C-d-scroll t)
  (evil-want-C-u-scroll t)
  (evil-want-keybinding nil)
  (evil-want-integration t)
  (evil-mode t)
  (evil-undo-system 'undo-redo))

(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

(use-package magit
  :ensure t)
