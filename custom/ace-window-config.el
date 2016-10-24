;;; package --- ace-window Config
;;; Commentary:
;;; Code:

(use-package ace-window
  :ensure t)

;; http://ergoemacs.org/emacs/reclaim_keybindings.html
(progn
  (define-key comint-mode-map (kbd "M-p") 'ace-window)
  (define-key comint-mode-map (kbd "M-[") 'comint-previous-input)
)
(global-set-key (kbd "M-p") 'ace-window)

(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
;;; ace-window-config.el ends here
