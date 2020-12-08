;; Rust support using Cargo.el and rustic for Awoo Emacs
;; This file is not part of GNU Emacs

(straight-use-package 'cargo)
(straight-use-package 'rustic)

(eval-after-load 'cargo
    (add-hook 'rust-mode-hook 'cargo-minor-mode)
)

(eval-after-load 'rustic
    (add-hook 'eglot--managed-mode-hook (lambda () (flymake-mode -1)))
)

(setq rustic-lsp-client 'eglot)

(provide 'awoo-rust)
