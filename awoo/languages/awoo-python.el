;; Python support through Elpy for Awoo Emacs
;; This file is not part of GNU Emacs

(straight-use-package 'elpy)

(eval-after-load 'elpy
    (progn
        (elpy-enable)
        (when (load "flycheck" t t)
            (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
            (add-hook 'elpy-mode-hook 'flycheck-mode)
        )
    )
)

;; TODO: Set default python interpreter command based on OS

(provide 'awoo-python)
