(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; (require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/.cask/24.4.1/elpa")

(load "00common-setup.el")
(load "01auto-complete.el")
(load "02ruby.el")
(load "03smartparens.el")
(load "04projectile.el")
(load "05robe.el")
(load "06highlight.el")
(load "07multiple.el")
(load "08feature.el")
(load "09coffee.el")
(load "10rcodetools.el")
(load "11flymake.el")
(load "12multi-term.el")
(load "13erc.el")
(load "14magit.el")
(load "15rbenv.el")
(load "16discover.el")
(load "17restclient.el")
(load "18haskell.el")
(load "19w3m.el")
(load "20js.el")



;; Display ido results vertically, rather than horizontally
;; (setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
;; (defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
;; (add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
;; (defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;;   (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;;   (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
;; (add-hook 'ido-setup-hook 'ido-define-keys)

