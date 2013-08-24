Configuration Notes
==============================

First things first:

    ln -s ~/.emacs.d/init.el ~/.emacs

Layout
------
* init.el: first script to be loaded
* local/: packages not installed via package.el (not under version control)
* elpa/: packages installed with package.el

package.el (emacs <= 23)
------------------------
* Download [package.el](http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c998
82093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el).

* Using package.el:
    M-x package-list-packages
        Mark for:
            install: i
            remove: d
        Execute action: x

* Install magit

Customization List
------------------
* Do not display tips on startup
* Disable automatic backups
* Use package.el packages
* Enable column-number-mode by default
* Enable IBuffer
* Whitespace line highlighting
* Highlight anything beyond 80 character columns
