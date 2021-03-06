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
;; By default Awoo Emacs only includes the default awoo theme.
;; If you would like to use another theme, you must install it.
(setq awoo-theme 'awoo)

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

;; Emacs standard custom-set-variables and custom-set-faces
(custom-set-variables

 )

(custom-set-faces

 )

;; End of file
(provide 'awoo-config)
