;-------------------------------------------------------------------------------
; My customizations
;-------------------------------------------------------------------------------
; Do not show startup tips in XEmacs
(setq inhibit-startup-message t)
; Do not create backup files, using Git after all...
(setq make-backup-files nil)
; Display column number
(setq column-number-mode t)
; IBuffer is pretty indispensable
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)
; Highlight lines that contain only white space characters
; Highlight anything beyond the 80 character column
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
; Enable ido mode (minibuffer autocomplete)
(require 'ido)

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
