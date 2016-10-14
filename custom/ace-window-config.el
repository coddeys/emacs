;;; package --- ace-window Config
;;; Commentary:
;;; Code:

(require 'ace-window)

(define-key (current-global-map) [remap other-window] 'ace-window)
;; http://ergoemacs.org/emacs/reclaim_keybindings.html
(progn
  (define-key comint-mode-map (kbd "M-p") 'ace-window)
)

(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
;;; ace-window-config.el ends here
