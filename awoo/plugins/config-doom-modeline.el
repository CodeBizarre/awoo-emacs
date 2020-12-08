;; Doom-modeline options for Awoo Emacs
;; This file is not part of GNU Emacs

(add-hook 'after-init-hook #'doom-modeline-mode)

(setq doom-modeline-height 24)
(setq doom-modeline-unicode-fallback t)
(setq doom-modeline-minor-modes t)

(provide 'config-doom-modeline)
