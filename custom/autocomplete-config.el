;;; package --- JSX-config
;;; Commentary:
;;; Code:
(use-package company
  :ensure t)

(global-company-mode t)
(push 'company-robe company-backends)
(add-hook 'after-init-hook 'global-company-mode)
;;; autocomplete-config.el ends here
