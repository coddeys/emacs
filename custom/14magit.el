(when (locate-library "magit")
  (require 'magit))

; Magit rules!
(global-set-key (kbd "C-c g") 'magit-status)
