;;; package --- JSX-config
;;; Commentary:
;;; Code:

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
;;; js-config.el ends here
