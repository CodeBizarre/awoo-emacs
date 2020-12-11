;;; init.el -*- lexical-binding: t; no-byte-compile: t -*-
;; TODO: Group setq

;; This file is not part of GNU Emacs.

;;; ~Ah... Awoooooooooooooo!
;; Awoo Emacs by CodeBizarre (https://github.com/CodeBizarre/awoo-emacs)
;; License: GNU GPLv3
;;; Version: 0.0.1

;;; Inspired and influenced by these lovely projects:
;; Doom Emacs    : https://github.com/hlissner/doom-emacs
;; Spacemacs     : https://github.com/syl20bnr/spacemacs/
;; Centaur Emacs : https://github.com/seagle0128/.emacs.d/
;;;

;;; Evil is evil - vim is confusing. (Says the person writing a custom Emacs config)

;;; !IMPORTANT This file is NOT intended to be changed!
;;; To configure Awoo Emacs, edit `.emacs.d/awoo/awoo-config.el` for general config and
;;; `.emacs.d/awoo/awoo-custom.el` for post-init/overrides.
;;; To configure plugins see the plugin's config in `.emacs.d/awoo/plugins/config-*.el`

;; It is important to note that not all plugins have a file here, if you would like to
;; change options for a plugin that does NOT already have a file, the preffered method is
;; to add it to the end of your `.emacs.d/awoo/config/awoo-custom.el`.

;; These files are intended to be changed ONLY if you know what you're doing!
;; I will not provide configuration support for plugins (Except for bugs/issues in what
;; is already provided in Awoo Emacs).
;; If you are unsure about what an option does, or how to change a behavior, please see
;; the documentation and/or repo for Emacs or the relevant plugin.
;;; Thank you!

;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOO,.lXOOOOWA
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOOl   :OOOOWA
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOo.    oOOOWA
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOc.     .;..kW
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOl.          lWO
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOx.           ,OWO
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOOx.            oOWA
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOo,              lOOW
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOl                .kWO
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOk;.              lWO
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOx.              :OW
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOLFOOOO,               .WA
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOO;                 oW
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOk'                  cO
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOc.                   :O
;; AAAAAAAAAAAAAAAAAAAAAAAAAAAAAWOOOOOOwan'                      cO
;; AAAAAAAAAAAAAAAAAAAAAWOOOOOOkdl:;,..                          ;A
;; AAAAAAAAAAAAAAWOOOOOOxoc;'..                                 .kW
;; AAAAAAAAAAAWOOOOOOd;.                                        ;XO
;; AAAAAAAAAWOOOOOOl.                                          .xWO
;; AAAAAAWOOOOOOXo.                                            cWAN
;; AAAAAAWOOOOOO:                                            .lOOWA
;; AAAAAWOOOOOOc                                            'OOOOWA
;; AAAAWOOOOOOk.                                            dOOOOWA
;; AAAWOOOOOOx.                                            .xOOOOWA
;; AAWOOOOOOc.                          ...''..'.          .xOOOOWA
;; AWOOOOOo.                           :AWOOOBARk.          oOOOWAA
;; AWOOXd.                            ;AWOBARKBARk.         :OOOOWA
;; UWUo.                 .,.        .oABARKBARKBARk.        'OOOOWA
;; Ad.               .;wOOf.    .;dBARKBARKBARKBARKo.       .kOOOWA
;; l             .:dAWOOOd.  .;dBARKBARKBARKBARKBARKo.      .xOOOWA
;; .         .,oAWOOOOOOl. .lBARKBARKBARKBARKBARKBARKo.      cOOOWA
;; :'.     ,dAWOOOOOOOOo   lOOOOOOBARKBARKBARKBARKBARKd.     ,OOOWA
;; WOO'  'xAWOOOOOOOOOOOo. cOOOOOOOBARKBARKBARKBARKBARKd.    .lOOWA
;; AWOl  oOOOOOOOOOOOOOOOO:.cOOOOOOOOOOOOOOOOOOOOOOOOOOOo.     'lkA
;; AWOk. cOOOOOOOOOOOOOOOOO:.'dAWOOOOOBARKBARKBARKBARKBARkc:;;;;:cd
;; AWOO; 'OOOOOOOOOOOOOOOOOOl..',dBARKBARKBARKBARKBARKBARKBARKAWOOO
;; AWOOl  'oOOOOOOOOOOOOOOOOOHOWLOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
;; AWOOO, ..:OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
;;; Can you find the hidden forbiddens?
;;; - OWO UWU WAN WOOF WOLF HOWL

;; Create a constant that links to the github repo
(defconst awoo-source
    "https://github.com/CodeBizarre/awoo-emacs"
    "Source repository for Awoo Emacs."
)

;; Emacs 26+ only, I don't mess around with older versions.
(when (< emacs-major-version 26)
    (error "Emacs version 26 or newer required, you're on %s"
        emacs-version
    )
)

;; Fix up garbage collection to help startup times and performance
(defvar default-gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.7)

;; Temporarily disable the default file-name-handler-alist to quicken load times
(defvar default-fnh-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

;;; Packages

;; Builtin
(require 'whitespace)

;; Bootstrap for straight.el (https://github.com/raxod502/straight.el)
(defvar bootstrap-version)
(let ((bootstrap-file
        (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory)
    )
    (bootstrap-version 5)
    )
    (unless (file-exists-p bootstrap-file)
        (with-current-buffer
            (url-retrieve-synchronously
                "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
                'silent 'inhibit-cookies
            )
            (goto-char (point-max))
            (eval-print-last-sexp)
        )
    )
    (load bootstrap-file nil 'nomessage)
)
;; Add the custom directories to the load path
(setq awoo-dir (format "%s/awoo" user-emacs-directory))
(add-to-list 'load-path awoo-dir)
(add-to-list 'load-path (format "%s/plugins" awoo-dir))

;; Set the custom file to the awoo-custom.el
(setq custom-file (format "%s/awoo-config.el" awoo-dir))

;; Load the Awoo Emacs global config first
(require 'awoo-config)

;; Install/load packages
(require 'package-list)

;; Install/load language support from `.emacs.d/awoo/langauges`
;; (https://stackoverflow.com/questions/18706250/emacs-require-all-files-in-a-directory)
(let ((loaded (mapcar #'car load-history)))
    (dolist (file (directory-files (format "%s/languages" awoo-dir) t ".+\\.elc?$"))
        (unless (catch 'issue
            (dolist (done  loaded) (when (equal file done) (throw 'issue t)))
            nil
            )
        (load (file-name-sans-extension file))
        (push file loaded)
        )
    )
)

;; Load our custom defaults
(require 'custom-defaults)

;; Now load the plugin configurations
(require 'config-centaur-tabs)
(require 'config-projectile)
(require 'config-dashboard)
(require 'config-helpful)
(require 'config-treemacs)
(require 'config-highlight-indent-guides)
(require 'config-doom-modeline)

;; Load the Awoo Emacs post-init custom config
(require 'awoo-custom)

;; Reset the file-name-handler-alist after loading is finished
(setq file-name-handler-alist default-fnh-alist)
;; Reset garbage collection
(setq gc-cons-threshold default-gc-cons-threshold)
(setq gc-cons-percentage 0.1)
