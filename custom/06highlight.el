(blink-cursor-mode 0)
(global-hl-line-mode 1)

(require 'highlight-indentation)
(add-hook 'ruby-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))

;; (add-hook 'coffee-mode-hook
;;           (lambda () (highlight-indentation-current-column-mode)))
;; (set-face-background 'highlight-indentation-face "#073642")
;; (set-face-background 'highlight-indentation-current-column-face "#073642")
