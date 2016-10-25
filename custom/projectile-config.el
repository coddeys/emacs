;;; package --- Projectile Config
;;; Commentary:
;;; Code:
(use-package projectile
  :ensure t)

(use-package projectile-rails
  :ensure t)

(projectile-global-mode)
(projectile-rails-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(use-package helm-ag
  :ensure t)

(use-package helm-projectile
  :ensure t)

(helm-projectile-on)
;;; projectile-config.el ends here
