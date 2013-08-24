; Do not display tips on startup
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;-------------------------------------------------------------------------------
; Do not create backup files. Using Git after all...
;-------------------------------------------------------------------------------
(setq make-backup-files nil)
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
