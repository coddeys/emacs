;;; package --- Emacs init.el
;;; Commentary:
;;; Code:
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(package-initialize)
(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa") (package-refresh-contents))
(package-install 'use-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/custom")
(load "better-defaults.el")
(load "common-setup.el")
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
(load "setup-swiper.el")
;; (load "wanderlust-config.el")
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elm-format-on-save t)
 '(package-selected-packages
   (quote
    (elm-mode flycheck-elm docker dockerfile-mode railscasts-reloaded-theme railscasts-theme anti-zenburn-theme nodejs-repl moz haskell-mode slim-mode zenburn-theme yaml-mode web-mode w3m use-package smartparens ruby-refactor ruby-block rubocop robe restclient-test projectile-rails multiple-cursors multi-term markdown-preview-mode magit log4j-mode json-mode js2-mode ivy-hydra highlight-indentation helm-projectile helm-ag google-translate flycheck fill-column-indicator discover counsel company-web ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
