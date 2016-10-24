;;; package --- JSX-config
;;; Commentary:
;;; Code:
(use-package js2-mode
  :ensure t)
(use-package json-mode
  :ensure t)

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
;;; js-config.el ends here
