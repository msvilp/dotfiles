(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(require 'uniquify) 
(setq 
  uniquify-buffer-name-style 'post-forward
  uniquify-separator ":")
(setq-default puppet-indent-level 4)
(setq make-backup-files nil)
