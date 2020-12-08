;; Lua support using lua-mode for Awoo Emacs
;; This file is not part of GNU Emacs

(straight-use-package 'lua-mode)

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(provide 'awoo-lua)
