;; Default config values for Awoo Emacs
;; This file is not part of GNU Emacs.

;; UTF-8 all the way
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)

;; Spaces not tabs!
(setq-default major-mode 'text-mode
    fill-column 90
    tab-width 4
    indent-tabs-mode nil
)

;; Set font
(add-to-list 'default-frame-alist
    `(font . ,awoo-font)
)

;; Set theme
(load-theme awoo-theme)

;; Enable amx-mode (https://github.com/DarwinAwardWinner/amx)
(amx-mode)

;; Enable the ace popup menu (https://github.com/mrkkrp/ace-popup-menu)
(ace-popup-menu-mode 1)
(setq ace-popup-menu-show-pane-header t)

;; Enable yas-global-mode (https://github.com/joaotavora/yasnippet)
(yas-global-mode 1)

;; Bind and auto-start smartparens-mode (https://github.com/Fuco1/smartparens)
(global-set-key (kbd "C-x p s") 'smartparens-mode)
(add-hook 'prog-mode-hook 'smartparens-mode)

;; Company mode (http://company-mode.github.io/)
(global-set-key [C-tab] 'company-complete)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'company-mode-hook 'company-box-mode)

;; Enable flycheck's global mode (https://flycheck.org/)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Set config file modes
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.toml\\'" . toml-mode))

(provide 'custom-defaults)
