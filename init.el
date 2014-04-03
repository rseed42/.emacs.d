; -*- mode: emacs-lisp -*-
;-------------------------------------------------------------------------------
; Custom load paths
;-------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/local/")
; Node.js stuff
(add-to-list 'load-path "~/.emacs.d")
;-------------------------------------------------------------------------------
; Load the package manager package.el prior to anything else
;-------------------------------------------------------------------------------
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
;-------------------------------------------------------------------------------
; My customizations
;-------------------------------------------------------------------------------
; Do not show startup tips in XEmacs
(setq inhibit-startup-message t)
; Do not create backup files, using Git after all...
(setq make-backup-files nil)
; Display column number
(setq column-number-mode t)
; IBuffer is pretty indispensable. Uniquify for sensible names.
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)
(require 'uniquify)
; Highlight lines that contain only white space characters
; Highlight anything beyond the 80 character column
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
; Enable ido mode (minibuffer autocomplete)
(require 'ido)
(ido-mode t)
; Enable ansi color
(require 'ansi-color)
; Smooth scrolling is waaaay better
(require 'smooth-scrolling)
; Disable automatic indentation of cc mode
(require 'cc-mode)
    (add-to-list 'c-mode-common-hook
      (lambda () (setq c-syntactic-indentation nil)))

; More customization
(require 'cl)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'linum)
(require 'dired-x)
(require 'compile)

(menu-bar-mode -1)
(normal-erase-is-backspace-mode 1)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq save-abbrevs nil)
(setq show-trailing-whitespace t)
(setq suggest-key-bindings t)
(setq vc-follow-symlinks t)
;-------------------------------------------------------------------------------
; Interface enhancement
;-------------------------------------------------------------------------------
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 100 :width normal))))
 '(column-marker-1 ((t (:background "red"))))
 '(diff-added ((t (:foreground "cyan"))))
 '(flymake-errline ((((class color) (background light)) (:background "Red"))))
 '(font-lock-comment-face ((((class color) (min-colors 8) (background light)) (:foreground "red"))))
 '(fundamental-mode-default ((t (:inherit default))))
 '(highlight ((((class color) (min-colors 8)) (:background "white" :foreground "magenta"))))
 '(isearch ((((class color) (min-colors 8)) (:background "yellow" :foreground "black"))))
 '(linum ((t (:foreground "black" :weight bold))))
 '(region ((((class color) (min-colors 8)) (:background "white" :foreground "magenta"))))
 '(secondary-selection ((((class color) (min-colors 8)) (:background "gray" :foreground "cyan"))))
 '(show-paren-match ((((class color) (background light)) (:background "black"))))
 '(vertical-border ((t nil)))
)
;-------------------------------------------------------------------------------
; Better key bindings
;-------------------------------------------------------------------------------
(load "defuns-config.el")
(fset 'align-equals "\C-[xalign-regex\C-m=\C-m")
(global-set-key "\M-=" 'align-equals)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c;" 'comment-or-uncomment-region)
(global-set-key "\M-n" 'next5)
(global-set-key "\M-p" 'prev5)
(global-set-key "\M-o" 'other-window)
(global-set-key "\M-i" 'back-window)
(global-set-key "\C-z" 'zap-to-char)
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-d" 'delete-word)
(global-set-key "\M-h" 'backward-delete-word)
(global-set-key "\M-u" 'zap-to-char)
;-------------------------------------------------------------------------------
; JS Mode Configuration
;-------------------------------------------------------------------------------
;(load "js-config.el")
;(add-to-list 'load-path "~/.emacs.d/jade-mode") ;; github.com/brianc/jade-mode
;(require 'sws-mode)
;(require 'jade-mode)
;(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
;(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
