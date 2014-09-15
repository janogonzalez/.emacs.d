;; Add packages repository
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
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
