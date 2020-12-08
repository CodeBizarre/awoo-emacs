;; Highlight indent guides options for Awoo Emacs
;; This file is not part of GNU Emacs

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'column)

(provide 'config-highlight-indent-guides)
