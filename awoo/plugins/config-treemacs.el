;; Treemacs options for Awoo Emacs
;; This file is not part of GNU Emacs

(setq treemacs-show-cursor t)

(global-set-key (kbd "M-0") 'treemacs-select-window)
(global-set-key (kbd "C-x t 1") 'treemacs-delete-other-windows)
(global-set-key (kbd "C-x t t") 'treemacs)
(global-set-key (kbd "C-x t B") 'treemacs-bookmark)
(global-set-key (kbd "C-x t M-f") 'treemacs-find-file)
(global-set-key (kbd "C-x t M-t") 'treemacs-find-tag)

(provide 'config-treemacs)
