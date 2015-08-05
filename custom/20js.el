(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)

;; js2-mode provides 4 level of syntax highlighting.
;; They are * 0 or a negative value means none.
;; * 1 adds basic syntax highlighting.
;; * 2 adds highlighting of some Ecma built-in properties.
;; * 3 adds highlighting of many Ecma built-in functions.
(setq js2-highlight-level 3)

(add-hook 'js2-mode-hook 'smartparens-mode)

;; REACT JSX
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

;; JSHint with Flycheck
(require 'flycheck)
(add-hook 'js-mode-hook
          (lambda () (flycheck-mode t)))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)



