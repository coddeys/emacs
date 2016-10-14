;;; package --- Emacs init.el
;;; Commentary:

;;; Code:
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; (require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/.cask/24.4.1/elpa")

(load "better-defaults.el")
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
(load "helm-cnfg.el")
(load "google-translate-config.el")
;; (load "wanderlust-config.el")
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(anzu-use-mimego t)
 '(package-selected-packages
   (quote
    (bookmark+ js2-mode editorconfig babel zenburn-theme yasnippet yaml-mode web-mode w3m smex smartparens smart-compile slime simple-httpd scion sass-mode ruby-refactor ruby-electric ruby-block rubocop robe restclient rainbow-mode projectile-rails pallet multiple-cursors multi-term magit json-mode iflipb highlight-indentation highlight helm-projectile helm-ag haskell-mode google-translate fuzzy-match fuzzy flycheck fill-column-indicator feature-mode enh-ruby-mode emamux elm-mode ecukes discover company-inf-ruby color-theme anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
