#!/usr/bin/bash
gcl czipperz/b
gcl czipperz/chx
gcl czipperz/emacs.d $HOME/.emacs.d
(cd chx; ./install)
rm -R linux-tools
[ -f .gitconfig ] && mv .gitconfig .gitconfig.bkup
ln -s $HOME/dotfiles/git/gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/git/gcl       $HOME/.config/gcl
ln -s $HOME/dotfiles/git/gcl       $HOME/.config/gr

#Setup awesome
mkdir -p .config/awesome/themes
if [ ! -d .config/awesome/themes/transBlack ]; then
	gcl czipperz/awesomeThemes
	cp -R awesomeThemes/trans* .config/awesome/themes
	rm -R awesomeThemes
fi

ln -s $HOME/dotfiles/rc.lua                             $HOME/.config/awesome
ln -s $HOME/dotfiles/zsh/czipperz.zsh-theme             $HOME/.oh-my-zsh/themes
[ -f .xinitrc ] && mv .xinitrc .xinitrc.bkup
ln -s $HOME/dotfiles/xinitrc                            $HOME/.xinitrc
ln -s $HOME/dotfiles/zsh/zshrc                          $HOME/.zshrc
ln -s $HOME/dotfiles/zsh/zlogin                         $HOME/.zlogin

(cd b; ./install)
rm -R b
