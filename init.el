;;; package --- Emacs init.el
;;; Commentary:
;;; Code:

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

;; Install 'use-package' if necessary
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
(package-install 'use-package))

;; Enable use-package
(eval-when-compile
  (require 'use-package))
(require 'diminish)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Squeeze all configs in one file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-screen t)
(global-set-key (kbd "M-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "M-<tab>") 'dabbrev-expand)

(use-package ido
  :ensure t
  :config
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point 'guess
        ido-max-prospects 10
        ido-default-file-method 'selected-window
        ido-auto-merge-work-directories-length -1)
  (ido-mode +1))

;; replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") #'ibuffer)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(set-frame-font "Iosevka-12")

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
scroll-preserve-screen-position 1)

(defalias 'yes-or-no-p 'y-or-n-p)

;; UTF-8 please
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(blink-cursor-mode 0)
(global-hl-line-mode 1)

(setq-default indent-tabs-mode nil)   ;; don't use tabs to indent
(setq-default tab-width 8)            ;; but maintain correct appearance

;; Newline at end of file
(setq require-final-newline t)

;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;; use hippie-expand instead of dabbrev
(global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "s-/") #'hippie-expand)

(use-package anzu
  :ensure t
  :bind (("C-c %" . anzu-query-replace)
         ("C-M-%" . anzu-query-replace-regexp))
  :config
(global-anzu-mode +1))

;; don't kill emacs
(defun dont-kill-emacs ()
  (interactive)
  (error (substitute-command-keys "To exit emacs: \\[kill-emacs]")))
(global-set-key "\C-x\C-c" 'dont-kill-emacs)

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(use-package restclient
  :ensure t
  :mode ("\\.http\\'" . restclient-mode))

(use-package uniquify
  :config
  (setq uniquify-buffer-name-style 'reverse)
  (setq uniquify-separator "/")
  ;; rename after killing uniquified
  (setq uniquify-after-kill-buffer-p t)
  ;; don't muck with special buffers
  (setq uniquify-ignore-buffers-re "^\\*"))

(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode)))

(use-package avy
  :ensure t
  :bind (("C-;" . avy-goto-char)
         ("C-'" . avy-goto-char-2))
  :config
  (setq avy-background t))

(use-package magit
  :ensure t
  :bind (("C-c g" . magit-status)))

(use-package ace-window
  :ensure t
  :bind (("M-[" . ace-window))
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

;; JS config
(use-package web-mode
  :ensure t
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-attr-value-indent-offset 2)
  (setq web-mode-indentless-elements 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-sql-indent-offset 2)
  (setq web-mode-script-padding 2)
  (setq web-mode-style-padding 2))

(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))

(use-package js2-mode
  :ensure t
  :config
  (add-hook 'js2-mode-hook
            (lambda ()
              (setq js2-basic-offset 2))))

(use-package json-mode
  :ensure t
  :config
  (add-hook 'json-mode-hook
            (lambda ()
              (make-local-variable 'js-indent-level)
              (setq js-indent-level 2))))


;; Flychec-config

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))
  (setq-default flycheck-temp-prefix ".flycheck")
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(json-jsonlist)))
  (flycheck-add-mode 'javascript-eslint 'web-mode))

(flycheck-define-checker ruby-rubocop
  "A Ruby syntax and style checker using the RuboCop tool."
  :command ("rubocop" "--display-cop-names" "--format" "emacs"
            (config-file "--config" flycheck-rubocoprc)
            (option-flag "--lint" flycheck-rubocop-lint-only)
            "--stdin" source-original)
  :standard-input t
  :error-patterns
  ((info line-start (file-name) ":" line ":" column ": C: "
         (optional (id (one-or-more (not (any ":")))) ": ") (message) line-end)
   (warning line-start (file-name) ":" line ":" column ": W: "
            (optional (id (one-or-more (not (any ":")))) ": ") (message)
            line-end)
   (error line-start (file-name) ":" line ":" column ": " (or "E" "F") ": "
          (optional (id (one-or-more (not (any ":")))) ": ") (message)
          line-end))
  :modes (enh-ruby-mode ruby-mode)
  )

(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (push 'company-robe company-backends)
  (add-hook 'after-init-hook 'global-company-mode))

;; Rcodetools
(when (file-exists-p "./custom/rcodetools.el")
  (load-file "./custom/rcodetools.el"))

;; Ruby Config
(use-package ruby-mode
  :ensure t
  :config
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
  (setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
  (setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path))))

(use-package rubocop
  :ensure t
  :config
  (autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil))

(use-package robe
  :ensure t)

;; ruby-block
(use-package ruby-block
  :ensure t
  :config
  (ruby-block-mode t)
  (setq ruby-block-highlight-toggle t))

;; ruby-refactor
(use-package ruby-refactor
  :ensure t
  :config
  (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch))

(use-package smartparens
  :ensure t
  :config
  (smartparens-global-mode)
  (show-smartparens-global-mode t))

(use-package projectile
  :ensure t
  :config
  (projectile-mode))

(use-package projectile-rails
  :ensure t
  :config
  (projectile-rails-global-mode)
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(use-package helm-ag
  :ensure t
  :config
  (helm-projectile-on))

(use-package helm-projectile
  :ensure t)

(use-package highlight-indentation
  :ensure t
  :config
  (add-hook 'ruby-mode-hook
          (lambda () (highlight-indentation-current-column-mode))))

(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package multi-term
  :ensure t
  :config
  (setq multi-term-program "/bin/zsh")
  (add-hook 'term-mode-hook
            (lambda ()
              (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
              (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))
  (add-hook 'term-mode-hook
            (lambda ()
              (define-key term-raw-map (kbd "C-y") 'term-paste)))

  (global-set-key "\C-xt" 'multi-term))

(use-package discover
  :ensure t
  :config
  (global-discover-mode 1))

(use-package w3m
  :ensure t
  :config
  (global-set-key (kbd "\C-cw") 'w3m)
  (setq browse-url-browser-function 'browse-url-chromium)
  (global-set-key "\C-xm" 'browse-url-at-point)
  (eval-after-load "dired"
    '(define-key dired-mode-map "\C-xm" 'dired-w3m-find-file))
  (defun dired-w3m-find-file ()
    (interactive)
    (require 'w3m)
    (let ((file (dired-get-filename)))
      (if (y-or-n-p (format "Use emacs-w3m to browse %s? "
                            (file-name-nondirectory file)))
          (w3m-find-file file)))))


(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x M-x") 'execute-extended-command)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  ;; rebind tab to do persistent action
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  ;; make TAB works in terminal
  (define-key helm-map (kbd "C-z")  'helm-select-action)
  ;; list actions using C-z
  (global-set-key (kbd "C-x b") 'helm-mini)
  (setq helm-buffers-fuzzy-matching t
        helm-recentf-fuzzy-match    t)
  (global-set-key (kbd "C-x C-f") 'helm-find-files))

(use-package google-translate
  :ensure t
  :config
  (global-set-key "\C-ct" 'google-translate-smooth-translate)
  (setq google-translate-translation-directions-alist '(("en" . "ru"))))

(use-package swiper
  :ensure t
  :config
  (global-set-key (kbd "C-s") 'swiper)
  )

(use-package swiper
  :ensure t
  :config
  (global-set-key (kbd "C-s") 'swiper))

(use-package counsel
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "C-c C-g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate))

(use-package hydra
  :ensure t)

(use-package ivy-hydra
  :ensure t
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (ivy-mode 1)
  (global-set-key (kbd "C-c C-r") 'ivy-resume))


(use-package rainbow-delimiters
  :ensure t)

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))

(use-package whitespace
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook #'whitespace-mode))
  (add-hook 'before-save-hook #'whitespace-cleanup)
  :config
  (setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail)))

(use-package diff-hl
  :ensure t
  :config
  (global-diff-hl-mode +1)
  (add-hook 'dired-mode-hook 'diff-hl-dired-mode)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode +1))

(use-package markdown-mode
  :ensure t)

(display-time-mode 1)

(use-package elm-mode
  :ensure t
  :config
  (add-to-list 'company-backends 'company-elm)
  (setq  elm-format-command "elm-format-0.18"))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package helm-c-yasnippet
  :ensure t
  :config
  (global-set-key (kbd "C-c y") 'helm-yas-complete))

(use-package sass-mode
  :ensure t
  :config
  (add-hook 'sass-mode-hook 'rainbow-mode)
  (add-hook 'sass-mode-hook
            (lambda ()
              (setq c-basic-offset 2)
              (setq indent-tabs-mode nil))))

(use-package scss-mode
  :ensure t
  :config
  (add-hook 'scss-mode-hook 'rainbow-mode)
  (add-hook 'sass-mode-hook
            (lambda ()
              (setq c-basic-offset 2)
              (setq indent-tabs-mode nil))))


;; Custom-set-variables

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elm-format-on-save t)
 '(package-selected-packages
   (quote
    (scss-mode sass-mode markdown-mode markdown git-gutter anzu elm-mode flycheck-elm docker dockerfile-mode railscasts-reloaded-theme railscasts-theme anti-zenburn-theme nodejs-repl moz haskell-mode slim-mode zenburn-theme yaml-mode web-mode w3m use-package smartparens ruby-refactor ruby-block rubocop robe restclient-test projectile-rails multiple-cursors multi-term markdown-preview-mode magit log4j-mode json-mode js2-mode ivy-hydra highlight-indentation helm-projectile helm-ag google-translate flycheck fill-column-indicator discover counsel company-web ace-window)))
 '(sp-ignore-modes-list (quote (minibuffer-inactive-mode shell-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)

;;; init.el ends here
