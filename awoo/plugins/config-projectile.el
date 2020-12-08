;; Projectile options for Awoo Emacs
;; This file is not part of GNU Emacs.

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'config-projectile)
