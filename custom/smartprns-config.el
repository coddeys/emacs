;;; package --- Smartparens Config
;;; Commentary:
;;; Code:
(use-package smartparens
  :ensure t)

(smartparens-global-mode)
(show-smartparens-global-mode t)

;; Always start smartparens mode in js-mode.
;; (add-hook 'js-mode-hook #'smartparens-mode)
;; (add-hook 'ruby-mode-hook #'smartparens-mode)
;;; smartprns-config.el ends here
