;; Dashboard options for Awoo Emacs
;; This file is not part of GNU Emacs.

(setq awoo-logo
    (expand-file-name
        (if (display-graphic-p) "awoo-emacs-pixabay.png" "art-awoo.txt")
        user-emacs-directory
    )
)

(setq dashboard-banner-logo-title "~Ah... Awoooooooooooo! Awoo Emacs!")
(setq dashboard-startup-banner (or awoo-logo 'official))
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-navigator t)
(setq dashboard-set-init-info t)

(setq dashboard-items
    '(
        (recents . 5)
        (bookmarks . 5)
        (projects . 5)
    )
)

(dashboard-setup-startup-hook)

(provide 'config-dashboard)
