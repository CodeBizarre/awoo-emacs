;; C/C++ Support through CCLS and Irony for Awoo Emacs
;; This file is not part of GNU Emacs

(straight-use-package 'ccls)
(straight-use-package 'irony)
(straight-use-package 'company-irony)
(straight-use-package 'flycheck-irony)

(setq ccls-executable "/usr/bin/ccls")

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; Windows performance tweaks
(when (boundp 'w32-pipe-read-delay)
  (setq w32-pipe-read-delay 0))
(when (boundp 'w32-pipe-buffer-size)
  (setq irony-server-w32-pipe-buffer-size (* 64 1024)))

(eval-after-load 'company
    '(add-to-list 'company-backends 'company-irony)
)

(eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup)
)

(provide 'awoo-c-cpp)
