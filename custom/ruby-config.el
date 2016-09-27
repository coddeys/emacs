;;; package --- Ruby Config
;;; Commentary:
;;; Code:
(require 'ruby-mode)
(require 'rubocop)

(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(defvar ruby-bounce-deep-indent t)
(defvar ruby-hanging-brace-indent-level 2)

(define-key ruby-mode-map (kbd "C-c C-c") 'xmp)
(setq ruby-insert-encoding-magic-comment nil)
(add-hook 'ruby-mode-hook #'rubocop-mode)

; robe
(require 'robe)
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)

;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; ruby-refactor
(require 'ruby-refactor)
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
;;; ruby-config.el ends here
