;; Typescript support using Tide for Awoo Emacs
;; This file is not part of GNU Emacs

(straight-use-package 'tide)

(defun setup-tide-mode ()
    (interactive)
    (tide-setup)
    (flycheck-mode +1)
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (eldoc-mode +1)
    (tide-hl-identifier-mode +1)
    (company-mode +1)
)

(eval-after-load 'tide
    (add-hook 'typescript-mode-hook #'setup-tide-mode)
)

(provide 'awoo-typescript)
