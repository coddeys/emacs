;;; package --- JSX-config
;;; Commentary:

;;; Code:
(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; (require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/.cask/24.4.1/elpa")

(load "00common-setup.el")
(load "uniquify-config.el")
(load "yaml-config.el")
(load "avy-config.el")
(load "magit-config.el")
(load "ace-window-config.el")
(load "80column-config.el")
(load "jsx-config.el")
(load "flycheck-config.el")
(load "js-config.el")
(load "autocomplete-config.el")
(load "ruby-config.el")
(load "smartprns-config.el")
(load "projectile-config.el")
(load "highlight-config.el")
(load "multiple-config.el")
(load "rcodetools.el")
(load "multi-term-config.el")
(load "discover-config.el")
(load "setup-w3m.el")
(load "helm-config.el")
(load "google-translate-config.el")
;;; init.el ends here
