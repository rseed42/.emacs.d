===== Notes About This Configuration ===========================================
First things first:
 Replace ~/.emacs with a link to .emacs.d/init.el

+------------------------------------------------------------------------------+
| Layout                                                                       |
+------------------------------------------------------------------------------+
init.el: first script to be loaded
local/: packages not installed via package.el (not under version control)
elpa/: packages installed with package.el

+------------------------------------------------------------------------------+
| package.el (emacs <= 23)                                                     |
+------------------------------------------------------------------------------+
Download package.el from
http://repo.or.cz/w/emacs.git/blob_plain/
1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el
to local/

Using package.el:
    M-x package-list-packages
    Mark for:
        install: i
        remove: d
    Execute action: x

Install magit

+------------------------------------------------------------------------------+
| Customization List                                                           |
+------------------------------------------------------------------------------+
0. Do not display tips on startup
1. Disable automatic backups
2. Use package.el packages
