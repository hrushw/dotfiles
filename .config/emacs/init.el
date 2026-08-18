(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))

  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://radian-software.github.io/straight.el/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(use-package straight)

(use-package tool-bar
  :custom
  (tool-bar-mode nil))

(use-package menu-bar
  :custom
  (menu-bar-mode nil))

(use-package scroll-bar
  :custom
  (scroll-bar-mode nil))

(use-package evil
  :straight t
  :custom
  (evil-want-C-d-scroll t)
  (evil-want-C-u-scroll t)
  (evil-want-keybinding nil)
  (evil-want-integration t)
  (evil-mode t)
  (evil-undo-system 'undo-redo))

(use-package evil-collection
  :straight t
  :config
  (evil-collection-init))

(use-package ido
  :init
  (setq ido-enable-flex-matching t
	ido-enable-regexp t)
  :config
  (ido-mode 1)
  (ido-everywhere 1))

(use-package recentf
  :init
  (setq recentf-save-file "~/.local/state/emacs/recentf"))

(use-package bookmark
  :init
  (setq bookmark-default-file "~/.config/emacs/bookmarks"))

(use-package savehist
  :init
  (setq savehist-file "~/.local/state/emacs/history")
  :config
  (savehist-mode 1))

(setq backup-directory-alist '(("." . "~/.local/state/emacs/backups")))

(setq make-backup-files t)
(setq backup-by-copying t)

(setq default-directory "~")

(load-theme 'modus-operandi-deuteranopia)

(setq default-frame-alist
      '((fullscreen . maximized)
        (undecorated . t)
        (font . "SpaceMono Nerd Font-16")
        (vertical-scroll-bars . nil)
        (horizontal-scroll-bars . nil)))

