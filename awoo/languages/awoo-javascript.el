;; Javascript support using js2-mode for Awoo Emacs
;; This file is not part of GNU Emacs

(straight-use-package 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(provide 'awoo-javascript)
