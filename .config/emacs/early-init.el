;; -*- lexical-binding: t -*-

;; TODO - create something like setq-expand to allow using environment variables in strings
;; see expand-file-name, substitute-in-file-name
(setq custom-file "~/.config/emacs/emacs-custom.el"
	  recentf-save-file "~/.local/state/emacs/recentf"
	  bookmark-default-file "~/.config/emacs/bookmarks"
	  savehist-file "~/.local/state/emacs/history"
	  backup-directory-alist '(("." . "~/.local/state/emacs/backups")))

(setq make-backup-files t
	  backup-by-copying t)

(load custom-file)
(savehist-mode 1)

(setq default-directory "~")

