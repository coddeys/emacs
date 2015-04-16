(when (locate-library "magit")
  (require 'magit))

; Magit rules!
(global-set-key (kbd "C-c g") 'magit-status)
(setq magit-last-seen-setup-instructions "1.4.0")
