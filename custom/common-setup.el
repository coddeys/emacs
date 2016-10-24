;;; package --- Emacs common-setup.el
;;; Commentary:

(ido-mode t)

(set-default-font "Iosevka-13")
(setq default-frame-alist '((font . "Iosevka-13")))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

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

(use-package zenburn-theme
  :ensure t)
(load-theme 'zenburn t)

(use-package restclient
  :mode ("\\.http\\'" . restclient-mode))

;;; common-setup.el ends here