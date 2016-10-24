;;; package --- Emacs init.el
;;; Commentary:
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
;; ;;; init.el ends here
