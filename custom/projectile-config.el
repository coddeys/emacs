;;; package --- Projectile Config
;;; Commentary:
;;; Code:
(require 'projectile)
(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(require 'helm-projectile)
(helm-projectile-on)
;;; projectile-config.el ends here
