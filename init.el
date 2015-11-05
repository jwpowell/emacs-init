(require 'package)

;;;; Package Management

(defvar my-packages '(better-defaults
                      markdown-mode
		      ;paredit
		      idle-highlight-mode
		      ido-ubiquitous
		      ;find-file-in-project
		      ;magit
		      smex
                      base16-theme
                      dockerfile-mode))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;;; UI Configuration

(setq inhibit-splash-screen t)
(set-default-font "Inconsolata 16")

(load-theme 'base16-ashes-dark t)

;;;; C language configuration

(setq c-default-style "linux"
      c-basic-offset 4)

