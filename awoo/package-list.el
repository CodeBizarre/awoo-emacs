;; List of third party packages to install
;; This file is not part of GNU Emacs.

;;; Interface/usage enhancement
(straight-use-package 'helm)
(straight-use-package 'amx)

(straight-use-package 'all-the-icons)
(straight-use-package 'centaur-tabs)
(straight-use-package 'workgroups2)
(straight-use-package 'ace-popup-menu)
(straight-use-package 'page-break-lines)
(straight-use-package 'projectile)
(straight-use-package 'dashboard)

(straight-use-package 'helpful)

(straight-use-package 'magit)

(straight-use-package 'treemacs
    :init
    (with-eval-after-load 'winum
        (define-key winum-keymap (kbd M-0) #'treemacs-select-window)
    )
)
(straight-use-package 'treemacs-projectile)
(straight-use-package 'treemacs-magit)

(straight-use-package 'undo-tree)

(straight-use-package
    '(typo-el :type git :host github :repo "jorgenschaefer/typoel")
)

(straight-use-package 'doom-modeline
    :defer t
)

;;; Code
(straight-use-package 'yasnippet)
(straight-use-package 'yasnippet-snippets)

(straight-use-package 'smartparens)

(straight-use-package 'highlight-indent-guides)

(straight-use-package 'company)
(straight-use-package 'company-box)

(straight-use-package 'flycheck)

(straight-use-package 'eglot)

;;; Language support
(straight-use-package 'json-mode)
(straight-use-package 'yaml-mode)
(straight-use-package 'toml-mode)

(provide 'package-list)
