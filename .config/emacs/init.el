;; -*- lexical-binding: t -*-

;; Packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; Default frame
(setq default-frame-alist
      '((fullscreen . maximized)
        (undecorated . t)
        (font . "SpaceMono Nerd Font-16")
        (vertical-scroll-bars . nil)
        (horizontal-scroll-bars . nil)))

(defun add-hooks (hook fun &rest args)
  (add-hook hook fun)
  (if (not (null args)) (apply 'add-hooks args)))

(defun add-to-lists (list-var elem &rest args)
  (add-to-list list-var elem)
  (if (not (null args)) (apply 'add-to-lists args)))

;; Evil mode
(setq evil-want-C-d-scroll t
      evil-want-C-u-scroll t
      evil-want-keybinding nil
      evil-want-integration t)

(require 'evil)
(require 'evil-collection)

(evil-mode 1)
(evil-set-undo-system 'undo-redo)
(evil-collection-init)
;;  (add-hook 'Info-mode-hook (lambda () (evil-local-mode 0)))
;;  (add-hook 'calc-mode-hook (lambda () (evil-local-mode 0))))

;; Sensible indentation settings
(setq-default
 tab-width 4
 tab-always-indent t
 indent-tabs-mode t
 indent-line-function 'insert-tab
 backward-delete-char-untabify-method nil
 c-basic-offset 4
 c-tab-always-indent nil
 c-syntactic-indentation nil
 electric-indent-mode t)

(defun disable-indent-tabs-mode ()
  (setq indent-tabs-mode nil))

;; use spaces for lisp
(add-hooks 'emacs-lisp-mode-hook 'disable-indent-tabs-mode
           'scheme-mode-hook 'disable-indent-tabs-mode
           'lisp-mode-hook 'disable-indent-tabs-mode
           'text-mode-hook
           #'(lambda () (setq indent-line-function 'indent-relative)))

;; Ido mode
(require 'ido)
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t
      ido-enable-regexp t)

;; Disable bars
(mapcar #'(lambda (foo) (funcall foo -1))
        '(menu-bar-mode tool-bar-mode scroll-bar-mode))
(setq tab-bar-show 1
      tab-bar-tab-hints t)

;; Quieter emacs
(setq-default inhibit-startup-screen t ; no startup screen
              initial-buffer-choice nil
              initial-scratch-message nil
              delete-old-versions t ; disable annoying prompt while saving
              vc-follow-symlinks nil) ; follow symlinks without prompting
(keymap-global-set "C-x k" 'kill-current-buffer) ; override ido kill buffer

;; Lines and line numbers
(setq-default display-line-numbers-type 'relative
              display-line-numbers-width-start t)
(set-face-attribute 'line-number-current-line nil :weight 'bold)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(global-visual-line-mode t) ; wrap text

;; Org mode
;; cloned https://code.tecosaur.net/tec/org-mode
;; use-package instructions at https://abode.karthinks.com/org-latex-preview/ caused some issues,
;; but loading cloned files directly seems to work
(add-to-list 'load-path "~/.config/emacs/org-mode/lisp")
(load "~/.config/emacs/org-mode/lisp/org.el")
(add-hook 'org-mode-hook 'org-latex-preview-mode
          'org-mode-hook #'turn-on-org-cdlatex)
(org-defkey org-cdlatex-mode-map (kbd "_") nil)
(org-defkey org-cdlatex-mode-map (kbd "^") nil)
(setq org-latex-preview-mode-display-live t
      org-latex-preview-mode-update-delay 0.25)
;; (require 'org)
(define-key org-mode-map (kbd "M-<return>") 'org-meta-return)
(setq org-tags-column 0
      org-edit-src-content-indentation 0
      org-hide-emphasis-markers t
      org-indent-mode t
      org-catch-invisible-edits 'show)

(org-babel-do-load-languages
 'org-babel-load-languages
 (mapcar #'(lambda (lang) (cons lang t))
         '(emacs-lisp python scheme latex makefile calc perl shell)))

;; (defvar preview-default-preamble)
(plist-put org-format-latex-options :scale 2.0)
(plist-put org-latex-preview-appearance-options :scale 2.0)
(plist-put org-latex-preview-appearance-options :zoom 1.25)
(add-to-lists 'org-latex-packages-alist '("" "physics2" t)
              'org-latex-packages-alist '("" "derivative" t)
              'org-latex-packages-alist '("" "esint" t)
              'org-latex-packages-alist '("" "bm" t)
              'org-latex-packages-alist '("euler-digits,euler-hat-accent" "eulervm" t))
;; (add-to-list 'org-latex-packages-alist '("" "pstricks" t))
;; (add-to-list 'org-latex-packages-alist '("" "tikz" t))
;; (add-to-list 'org-latex-packages-alist '("" "pgfplots" t))
(eval-after-load "preview"
  '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzpicture}" t))
(setq org-preview-latex-default-process 'dvisvgm)

(setq explicit-shell-file-name nil
      shell-file-name "bash"
      browse-url-generic-program "firefox"
      browse-url-browser-function 'browse-url-generic
      inferior-lisp-program "sbcl")
(setenv "EDITOR" "emacsclient")

(defun switch-theme (new-theme)
  (disable-theme (car custom-enabled-themes))
  (load-theme new-theme t nil))

(defun toggle-theme ()
  (interactive)
  (if (eq (car custom-enabled-themes) 'gruber-darker)
      (switch-theme 'modus-operandi-deuteranopia)
    (switch-theme 'gruber-darker)))

;; Gruber darker
(load "~/.config/emacs/gruber-darker-theme/gruber-darker-theme.el")
(setq custom-enabled-themes '())
(load-theme 'gruber-darker t nil)

;; keybinds
(keymap-global-set "C-;" 'compile)
(keymap-global-set "C-:" 'recompile)
(keymap-global-set "M-p t" #'toggle-theme)
(keymap-global-set "M-p M-r" #'restart-emacs)

;; AUCTeX and CDLaTeX setup
(require 'auctex)
(setq LaTeX-section-hook
      '(LaTeX-section-heading
        LaTeX-section-title
        LaTeX-section-section))
;;        preview-scale-function 0.8)
((lambda (fun)
   (add-hook 'LaTeX-mode-hook fun
             'latex-mode-hook fun))
 #'(lambda ()
     (add-to-list 'TeX-view-program-selection '(output-pdf "Zathura"))))

(add-hook 'LaTeX-mode-hook #'turn-on-cdlatex
          'latex-mode-hook #'turn-on-cdlatex)

;; pdf-tools setup
(require 'pdf-tools)
(add-hook 'pdf-view-mode-hook
          #'(lambda () (display-line-numbers-mode -1)))
(setq pdf-view-midnight-colors
      (cons (face-attribute 'default :foreground)
            (face-attribute 'default :background)))
(pdf-tools-install)

;; notmuch setup
(add-to-list 'load-path
             "/usr/share/emacs/site-lisp/notmuch")
(require 'notmuch)

(require 'company)
(setq company-clang-insert-arguments nil)
(global-company-mode 1)
