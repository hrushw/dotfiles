(use-package custom
  :custom
  (custom-enabled-themes '(modus-operandi-deuteranopia)))

(use-package emacs
  :custom
  (default-frame-alist
   '((fullscreen . maximized)
     (undecorated . t)
     (font . "SpaceMono Nerd Font-16")
     (vertical-scroll-bars . nil)
     (horizontal-scroll-bars . nil))))

(use-package files
  :custom
  (auto-save-default nil)
  (backup-directory-alist '(("." . "~/.local/state/emacs/backups")))
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
  (recentf-save-file "~/.local/state/emacs/recentf"))

(use-package bookmark
  :custom
  (bookmark-default-file "~/.config/emacs/bookmarks"))

(use-package savehist
  :custom
  (savehist-file "~/.local/state/emacs/history")
  (savehist-mode t))

(use-package vc-hooks
  :custom
  (vc-follow-symlinks t))

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
  :after evil
  :config
  (evil-collection-init))

(use-package magit
  :straight t)

