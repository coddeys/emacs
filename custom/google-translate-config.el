;;; package --- Google Translate Config
;;; Commentary:
;;; Code:
(require 'google-translate)
(require 'google-translate-smooth-ui)
(global-set-key "\C-ct" 'google-translate-smooth-translate)
(setq google-translate-translation-directions-alist '(("en" . "ru")))
;;; google-translate-config.el ends here
