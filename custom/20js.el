(custom-set-variables
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(js3-lazy-commas t)
 '(js3-lazy-operators t)
 '(js3-expr-indent-offset 2)
 '(js3-paren-indent-offset 2)
 '(js3-square-indent-offset 2)
 '(js3-curly-indent-offset 2))

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
;; (add-to-list 'auto-mode-alist '("\\.json$" . js3-mode))

;; (add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)

;; js2-mode provides 4 level of syntax highlighting.
;; They are * 0 or a negative value means none.
;; * 1 adds basic syntax highlighting.
;; * 2 adds highlighting of some Ecma built-in properties.
;; * 3 adds highlighting of many Ecma built-in functions.
;; (setq js2-highlight-level 3)

;; (add-hook 'js2-mode-hook 'smartparens-mode)

;; REACT JSX
;; (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
;; (defadvice web-mode-highlight-part (around tweak-jsx activate)
;;   (if (equal web-mode-content-type "jsx")
;;       (let ((web-mode-enable-part-face nil))
;;         ad-do-it)
;;     ad-do-it))

;; JSHint with Flycheck
(require 'flycheck)
(add-hook 'js-mode-hook
          (lambda () (flycheck-mode t)))

;; (defun my-web-mode-hook ()
;;   "Hooks for Web mode."
;;   (setq web-mode-markup-indent-offset 2)
;;   (setq web-mode-css-indent-offset 2)
;;   (setq web-mode-code-indent-offset 2)
;;   (setq web-mode-indent-style 2)
;;   )
;; (add-hook 'web-mode-hook  'my-web-mode-hook)


(defcustom css-indent-offset 2
  "Number of spaces to indent lines in CSS mode"
  :group 'css
  :type  'integer)
