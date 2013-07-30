(message "Loading custom rseed42 Emacs config...")
;-------------------------------------------------------------------------------
; Do not create backup files. Using Git after all...
;-------------------------------------------------------------------------------
;(message "Disable auto backups")
(setq make-backup-files nil)
;(message "[OK]")

;-------------------------------------------------------------------------------
; Set up local package directory
;-------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/local/")

;-------------------------------------------------------------------------------
; Load the package manager package.el prior to anything else
;-------------------------------------------------------------------------------
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
