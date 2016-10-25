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
;; (load "wanderlust-config.el")
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-ag zenburn-theme yaml-mode web-mode w3m use-package smartparens ruby-refactor ruby-block rubocop robe projectile-rails multi-term magit json-mode js2-mode highlight-indentation helm-projectile google-translate flycheck fill-column-indicator discover company-web ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
