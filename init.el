(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; (require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/.cask/24.3.1/elpa")

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



;; (package-initialize)

;; ;; hide welcome screen
;; (setq inhibit-splash-screen t)
;; (setq default-input-method 'russian-computer)

;; ;; IDO-mode
;; (require 'ido)
;; (ido-mode t)

;; ;; ;; Flx-ido mode
;; ;; (require 'flx-ido)
;; ;; (ido-mode 1)
;; ;; (ido-everywhere 1)
;; ;; (flx-ido-mode 1)
;; ;; ;; disable ido faces to see flx highlights.
;; ;; (setq ido-use-faces nil)

;; ;; CUA-mode
;; ;; (cua-mode t)

;; ;; OpenDocument
;; ;; (add-to-list 'load-path "~/.emacs.d/dima/odf-mode")
;; ;; (load "odf-mode")

;; ;; Init MELPA
;; (require 'package)
;; (add-to-list 'package-archives
;;   '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; ;; Smex
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; ;; This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; ;; The toolbar, menu bar, and scroll bar are all turned off.
;; (scroll-bar-mode -1)
;; (tool-bar-mode -1)
;; (menu-bar-mode -1)

;; ;; Yasnippet
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; ;; Wrap tag
;; (defun coddeys-tag-lines (b e tag)
;;   "'tag' every line in the region with a tag"
;;   (interactive "r\nMTag for line: ")
;;   (save-restriction
;;     (narrow-to-region b e)
;;     (save-excursion
;;       (goto-char (point-min))
;;       (while (< (point) (point-max))
;;         (beginning-of-line)
;;         (insert (format "<%s>" tag))
;;         (end-of-line)
;;         (insert (format "</%s>" tag))
;;         (forward-line 1)))))

;; (global-set-key (kbd "C-c C-w") 'coddeys-tag-lines)


;; (require 'uniquify)

;; ;; The saveplace library saves the location of the point when you kill a buffer and returns to it next time you visit the associated file.
;; (require 'saveplace)
;; (setq-default save-place t)
;; (setq save-place-file "~/.emacs.d/saved-places")

;; ;; Dynamic Abbreviations are one of the coolest functions in Emacs.
;; (global-set-key (kbd "C-<tab>") 'dabbrev-expand)
;; (define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)

;; ;; Ibuffer Mode
;; (global-set-key (kbd "C-x C-b") 'ibuffer)
;; (autoload 'ibuffer "ibuffer" "List buffers." t)

;; ;; Show paran mode
;; (show-paren-mode 1)

;; ;; Rinari

;; ;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
;; (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

;; ;; Inf-ruby
;; (autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
;; (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

;; (setq ruby-deep-indent-paren nil)

;; ;; Yes No
;; (fset 'yes-or-no-p 'y-or-n-p)
;; (blink-cursor-mode t)

;; ;; YAML-mode
;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; ;; Windmove
;; (global-set-key (kbd "C-c b")  'windmove-left)
;; (global-set-key (kbd "C-c f") 'windmove-right)
;; (global-set-key (kbd "C-c p")    'windmove-up)
;; (global-set-key (kbd "C-c n")  'windmove-down)

;; ;;
;; ;; ace jump mode major function
;; ;; 
;; (add-to-list 'load-path "/full/path/where/ace-jump-mode.el/in/")
;; (autoload
;;   'ace-jump-mode
;;   "ace-jump-mode"
;;   "Emacs quick move minor mode"
;;   t)
;; ;; you can select the key you prefer to
;; (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)


;; ;; optional key binding
;; (defun copy-line (&optional arg)
;;   "Do a kill-line but copy rather than kill.  This function directly calls
;;     kill-line, so see documentation of kill-line for how to use it including prefix
;;     argument and relevant variables.  This function works by temporarily making the
;;     buffer read-only."
;;   (interactive "P")
;;   (let ((buffer-read-only t)
;; 	(kill-read-only-ok t))
;;     (kill-line arg)))
;; ;; optional key binding
;; (global-set-key "\C-c\C-k" 'copy-line)


;; ;; Set font
;; (set-default-font "Inconsolata-15")


;; ;; SmoothScrolling
;;    (setq scroll-step           1
;;          scroll-conservatively 10000)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
;;  '(ansi-color-names-vector (vector "#657b83" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
;;  '(background-color "#fdf6e3")
;;  '(background-mode light)
;;  '(cursor-color "#657b83")
;;  '(custom-enabled-themes (quote (solarized-dark)))
;;  '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
;;  '(fci-rule-color "#eee8d5")
;;  '(foreground-color "#657b83")
;;  '(scss-compile-at-save nil)
;;  '(uniquify-buffer-name-style (quote forward) nil (uniquify))
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-color-map (quote ((20 . "#dc322f") (40 . "#cb4b16") (60 . "#b58900") (80 . "#859900") (100 . "#2aa198") (120 . "#268bd2") (140 . "#d33682") (160 . "#6c71c4") (180 . "#dc322f") (200 . "#cb4b16") (220 . "#b58900") (240 . "#859900") (260 . "#2aa198") (280 . "#268bd2") (300 . "#d33682") (320 . "#6c71c4") (340 . "#dc322f") (360 . "#cb4b16"))))
;;  '(vc-annotate-very-old-color nil))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; (put 'upcase-region 'disabled nil)
;; (put 'set-goal-column 'disabled nil)
;; (put 'dired-find-alternate-file 'disabled nil)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" default))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
