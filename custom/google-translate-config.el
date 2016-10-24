;;; package --- Google Translate Config
;;; Commentary:
;;; Code:
(use-package google-translate
  :ensure t)

(global-set-key "\C-ct" 'google-translate-smooth-translate)
(setq google-translate-translation-directions-alist '(("en" . "ru")))
;;; google-translate-config.el ends here
