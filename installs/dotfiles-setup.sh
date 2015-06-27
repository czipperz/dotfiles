#!/usr/bin/bash
gcl czipperz/b
gcl czipperz/chx
if [ -d $HOME/.emacs.d ]; then
    mv .emacs.d emacsdir
    gcl czipperz/emacs.d $HOME/.emacs.d
    mv emacsdir/* .emacs.d
    rm -R emacsdir
fi
gcl czipperz/emacs.d $HOME/.emacs.d
(cd chx; ./install)
rm -R linux-tools
[ -f .gitconfig ] && mv .gitconfig .gitconfig.bkup
ln $HOME/dotfiles/git/gitconfig $HOME/.gitconfig
rm $HOME/.config/gr $HOME/.config/gcl
ln $HOME/dotfiles/git/gcl       $HOME/.config/gcl
ln $HOME/dotfiles/git/gcl       $HOME/.config/gr

#Setup awesome
mkdir -p .config/awesome/themes
if [ ! -d .config/awesome/themes/transBlack ]; then
	gcl czipperz/awesomeThemes
	cp -R awesomeThemes/trans* .config/awesome/themes
	rm -R awesomeThemes
fi

ln $HOME/dotfiles/rc.lua                             $HOME/.config/awesome
ln $HOME/dotfiles/zsh/czipperz.zsh-theme             $HOME/.oh-my-zsh/themes
[ -f .xinitrc ] && mv .xinitrc .xinitrc.bkup
ln $HOME/dotfiles/xinitrc                            $HOME/.xinitrc
ln $HOME/dotfiles/Xresources                         $HOME/.Xresources
ln $HOME/dotfiles/zsh/zshrc                          $HOME/.zshrc
ln $HOME/dotfiles/zsh/zlogin                         $HOME/.zlogin

(cd b; ./install)
rm -R b
