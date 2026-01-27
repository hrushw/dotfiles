;; Packages
(progn
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "https://melpa.org/packages/") t))

;; Default frame
(setq default-frame-alist
      '((fullscreen . maximized)
        (undecorated . t)
        (font . "SpaceMono Nerd Font-16")
        (vertical-scroll-bars . nil)
        (horizontal-scroll-bars . nil)))

;; Evil mode
(progn
  (setq evil-want-C-u-scroll t)
  (require 'evil)
  (evil-mode 1)
  (evil-set-undo-system 'undo-redo))

;; Sensible indentation settings
(progn
  (setq-default tab-width 4
                indent-tabs-mode t
                tab-always-indent t
                backward-delete-char-untabify-method nil
                c-basic-offset 4
                c-tab-always-indent nil
                c-syntactic-indentation nil)
  ;; use spaces for elisp
  (add-hook 'emacs-lisp-mode-hook
            '(lambda () (setq indent-tabs-mode nil))))

;; Ido mode
(progn
  (require 'ido)
  (ido-mode 1)
  (ido-everywhere 1)
  (setq ido-enable-flex-matching t)
  (setq ido-enable-regexp t))

;; Disable bars
(progn
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (setq tab-bar-show 1
        tab-bar-tab-hints t))

;; Quieter emacs
(progn
  (setq-default inhibit-startup-screen t ; no startup screen
                initial-buffer-choice nil
                initial-scratch-message nil
                delete-old-versions t ; disable annoying prompt while saving
                vc-follow-symlinks nil) ; follow symlinks without prompting
  (global-set-key (kbd "C-x k") 'kill-current-buffer)) ; override ido kill buffer

;; Lines and line numbers
(progn
  (setq-default display-line-numbers-type 'relative)
  (set-face-attribute 'line-number-current-line nil :weight 'bold)
  (global-display-line-numbers-mode)
  (global-hl-line-mode)
  (global-visual-line-mode t)) ; wrap text

;; Org mode
(progn
  (require 'org)
  (define-key org-mode-map (kbd "M-<return>") 'org-meta-return)
  (setq org-tags-column 0
        org-edit-src-content-indentation 0
        org-hide-emphasis-markers t
        org-indent-mode t))

(progn
  (plist-put org-format-latex-options :scale 2)
  (add-to-list 'org-latex-packages-alist '("" "tikz" t))
  (add-to-list 'org-latex-packages-alist '("" "pgfplots" t))
  (eval-after-load "preview"
    '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzpicture}" t))
  (setq org-preview-latex-default-process 'imagemagick))

(progn
  (setq explicit-shell-file-name nil
        shell-file-name "bash"
        browse-url-generic-program "firefox"
        browse-url-browser-function 'browse-url-generic
        inferior-lisp-program "sbcl")
  (setenv "EDITOR" "emacsclient"))

(progn
  (require 'gruber-darker-theme)
  (load-theme 'gruber-darker t))

(progn
  (global-set-key (kbd "C-;") 'compile)
  (global-set-key (kbd "C-:") 'recompile))

(progn
  (require 'auctex)
  (setq LaTeX-section-hook
        '(LaTeX-section-heading
          LaTeX-section-title
          LaTeX-section-section)))
(progn
  (add-hook 'LaTeX-mode-hook #'turn-on-cdlatex)
  (add-hook 'latex-mode-hook #'turn-on-cdlatex))
