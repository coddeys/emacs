(ido-mode t)

(set-default-font "Iosevka-13")
(setq default-frame-alist '((font . "Iosevka-13")))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(load-theme 'zenburn t)
(setq system-uses-terminfo nil)
(prefer-coding-system 'utf-8)
(setq-default indent-tabs-mode nil)

(global-set-key (kbd "M-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "M-<tab>") 'dabbrev-expand)

(setq tab-width 2)
;; don't kill emacs
(defun dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))
(global-set-key "\C-x\C-c" 'dont-kill-emacs)

(global-set-key (kbd "C-c %") 'query-replace-regexp)

;; flx
;; (require 'flx-ido)
;; (ido-mode 1)
;; (ido-everywhere 1)
;; (flx-ido-mode 1)
;; ;; disable ido faces to see flx highlights.
;; (setq ido-enable-flex-matching t)
;; (setq ido-use-faces nil)
