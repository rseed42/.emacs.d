Configuration Notes
==============================

System
------
This configuration has been tested on Debian (7) Wheezy stable, so that is why
I am not using Emacs 24. Only packages that are not on the system have to be
put in .emacs.d/local. The .emacs file is not necessary when we have init.el
in .emacs.d.

Layout
------
* init.el: first script to be loaded and where configuration takes place
* local/: packages not installed via package.el (now under version control)
* elpa/: packages installed with package.el

package.el (emacs <= 23)
------------------------
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
[to be continued]
