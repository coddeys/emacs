;;; package --- Multi Term Config
;;; Commentary:
;;; Code:
(use-package multi-term
  :ensure t)

(setq multi-term-program "/bin/zsh")
(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))
(add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd "C-y") 'term-paste)))

(global-set-key "\C-xt" 'multi-term)
;;; multi-term-config.el ends here

