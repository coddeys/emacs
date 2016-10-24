(use-package magit
  :ensure t)

; Magit rules!
(global-set-key (kbd "C-c g") 'magit-status)

; Unset M-p (set for ace-window)
(with-eval-after-load 'magit
  (define-key magit-status-mode-map "\M-p" nil))
