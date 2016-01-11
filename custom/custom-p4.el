(load-library "p4")
(defun p4-go (config)
  (interactive
   (list (read-file-name "P4 Config file: "
                         (concat (getenv "HOME") "/etc/perforce/")
                         ""
                         t)))
  (p4-set-client-config (expand-file-name config))
  t)



