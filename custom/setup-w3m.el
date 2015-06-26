;; run w3m
(global-set-key (kbd "\C-cw") 'w3m)

;; browse-url
(setq browse-url-browser-function 'w3m-browse-url)  
(global-set-key "\C-xm" 'browse-url-at-point)       

;; diredl
(eval-after-load "dired"                                      
  '(define-key dired-mode-map "\C-xm" 'dired-w3m-find-file))  

(defun dired-w3m-find-file ()                                 
  (interactive)                                               
  (require 'w3m)                                              
  (let ((file (dired-get-filename)))                          
    (if (y-or-n-p (format "Use emacs-w3m to browse %s? "      
                          (file-name-nondirectory file)))     
        (w3m-find-file file))))                               
