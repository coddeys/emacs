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

(setq ruby-bounce-deep-indent t)
(setq ruby-hanging-brace-indent-level 2)


(define-key ruby-mode-map (kbd "C-c C-c") 'xmp)
(setq ruby-insert-encoding-magic-comment nil)

(add-hook 'ruby-mode-hook #'rubocop-mode)


