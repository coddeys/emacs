(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; (require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/.cask/24.4.1/elpa")

(load "00common-setup.el")
(load "uniquify-config.el")
(load "yaml-config.el")

(load "01auto-complete.el")
(load "02ruby.el")
(load "03smartparens.el")
(load "04projectile.el")
(load "05robe.el")
(load "06highlight.el")
(load "07multiple.el")
(load "08feature.el")
(load "09coffee.el")
(load "10rcodetools.el")
(load "11flymake.el")
(load "12multi-term.el")
(load "13erc.el")
(load "14magit.el")
(load "15rbenv.el")
(load "16discover.el")
(load "17restclient.el")
(load "18haskell.el")
(load "setup-w3m.el")
(load "20js.el")
(load "21helm.el")
;; (load "setup-skewer.el")
(load "custom-p4.el")
(load "setup-emms.el")
(load "23google-translate.el")
(load "setup-elm.el")

;; (load "22exwm.el")


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(haskell-process-type (quote cabal-repl))
;;  '(haskell-tags-on-save t)
;;  '(inhibit-startup-screen t))
;;  )
