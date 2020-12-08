;; Centaur Tabs options for Awoo Emacs
;; This file is not part of GNU Emacs.

(centaur-tabs-mode t)
(centaur-tabs-headline-match)
(centaur-tabs-change-fonts awoo-font 96)
(global-set-key (kbd "C-<prior>") 'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)

(setq centaur-tabs-style "alternate")
(setq centaur-tabs-height 32)
(setq centuar-tabs-icons t)
(setq centaur-tabs-set-modified-marker t)
(setq centaur-tabs-enable-key-bindings t)

(provide 'config-centaur-tabs)
