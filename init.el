;; Add packages repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Load list of packages
(when (not package-archive-contents)
  (package-refresh-contents))

;; List of packages to install
(defvar my-packages '(better-defaults
                      color-theme-solarized
                      ensime
                      fill-column-indicator
                      linum-relative
                      rust-mode
                      markdown-mode))

;; Install packages
(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; Set theme
(load-theme 'solarized-light t)

;; Show whitespace
(require 'whitespace)
(setq whitespace-style '(face empty tabs trailing))
(global-whitespace-mode t)

;; Less annoying questions
(defalias 'yes-or-no-p 'y-or-n-p)

;; Show column 80
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode
  (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; Enable relative line numbers
(require 'linum-relative)
(global-linum-mode t)
(setq linum-relative-current-symbol "")

;; Show current line and column numbers
(setq column-number-mode t)
(setq line-number-mode t)

;; Disable welcome screen and scratch message
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

;; Enable Ensime for Scala
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Settings for GUI
(if (display-graphic-p)
    (progn
      (add-to-list 'default-frame-alist '(font . "Menlo  Regular 14"))
      (set-face-attribute 'default t :font "Menlo Regular 14")
      (set-frame-parameter nil 'fullscreen 'fullboth)))
