#!/usr/bin/bash
gcl czipperz/b
gcl czipperz/chx
if [ -d $HOME/.emacs.d ]; then
    mv .emacs.d emacsdir
    gcl czipperz/emacs.d $HOME/.emacs.d
    mv emacsdir/* .emacs.d
    rm -R emacsdir
else
    gcl czipperz/emacs.d $HOME/.emacs.d
fi
(cd chx; ./install)
rm -R chx

gcl czipperz/confman
(cd confman; ./install)
rm -R confman
confman confman

#Setup awesome
mkdir -p .config/awesome/themes
if [ ! -d .config/awesome/themes/transBlack ]; then
	gcl czipperz/awesomeThemes
	cp -R awesomeThemes/trans* .config/awesome/themes
	rm -R awesomeThemes
fi

(cd b; ./install)
rm -R b
