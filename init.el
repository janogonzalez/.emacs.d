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
                      color-theme-solarized))

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
