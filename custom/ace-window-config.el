(require 'ace-window)

(define-key (current-global-map) [remap other-window] 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)
