(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)

;; js2-mode provides 4 level of syntax highlighting.
;; They are * 0 or a negative value means none.
;; * 1 adds basic syntax highlighting.
;; * 2 adds highlighting of some Ecma built-in properties.
;; * 3 adds highlighting of many Ecma built-in functions.
(setq js2-highlight-level 3)

;; Indent
(setq js3-indent-level 4)

