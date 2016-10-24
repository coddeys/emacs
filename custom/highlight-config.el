;;; package --- Highlight Config
;;; Commentary:
;;; Code:
(blink-cursor-mode 0)
(global-hl-line-mode 1)

(use-package highlight-indentation
  :ensure t)

(add-hook 'ruby-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))
;;; highlight-config.el ends here
