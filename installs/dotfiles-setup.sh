#!/usr/bin/bash
gcl czipperz/dotfiles
gcl czipperz/b
gcl czipperz/chx
gcl czipperz/emacs-config
(cd chx; ./install)
rm -R linux-tools
[ -f .gitconfig ] && mv .gitconfig .gitconfig.bkup
ln dotfiles/git/gitconfig .gitconfig
ln dotfiles/git/gcl .config/gcl
ln dotfiles/git/gcl .config/gr

#Setup awesome
mkdir -p .config/awesome/themes
if [ ! -d .config/awesome/themes/transBlack ]; then
	gcl czipperz/awesomeThemes
	cp -R awesomeThemes/trans* .config/awesome/themes
	rm -R awesomeThemes
fi

ln emacs-config/emacs.el .emacs
ln emacs-config/emacs.d/lisp/init-packages.el .emacs/lisp
ln emacs-config/emacs.d/lisp/init-powerline.el .emacs/lisp
ln emacs-config/emacs.d/lisp/init-mappings.el .emacs.d/lisp
ln emacs-config/emacs.d/lisp/init-markdown.el .emacs.d/lisp
ln dotfiles/rc.lua .config/awesome
ln dotfiles/zsh/czipperz.zsh-theme .oh-my-zsh/themes
[ -f .xinitrc ] && mv .xinitrc .xinitrc.bkup
ln dotfiles/xinitrc .xinitrc
ln dotfiles/zsh/zshrc .zshrc
ln dotfiles/zsh/zlogin .zlogin

(cd b; ./install)
rm -R b
