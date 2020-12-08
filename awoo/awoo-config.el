;; General configuration for Awoo Emacs
;; This file is not part of GNU Emacs.

;;; INFO

;; Your project/info details:
(setq user-full-name "Your Name")
(setq user-email "your@e.mail")
(setq user-home "https://<your-github-or-website>.com/")

;;; VISUAL

;; Editor font
;; This is set by default to Courier, which is present on most systems normally.
(setq awoo-font "Courier-11")

;; Editor theme
;; By default Awoo Emacs only includes the default spacemacs themes,
;; this will change later once I have finished my custom theme.
(setq awoo-theme 'spacemacs-dark)

;;; BINDS
;; Only binds for built-in packages should be set here.
;; Default binds for third-party packages will be set in `.emacs.d/awoo/custom-defaults.el`
;; Custom binds should be set in `.emacs.d/awoo/awoo-custom.el`

;; Windmove
(when (fboundp 'windmove-default-keybindings)
    (windmove-default-keybindings)
)

;; Whitespace
(global-set-key (kbd "C-c w") 'global-whitespace-mode)

;;; USER-DEFINED
;; Put your own custom init BELOW this line
;; Note that this runs BEFORE plugin initialization!

;; End of file
(provide 'awoo-config)
