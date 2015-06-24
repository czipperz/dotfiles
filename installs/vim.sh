#!/usr/bin/bash
[ -f .vimrc ] && mv .vimrc .vimrc.bkup
echo "source $HOME/dotfiles/vim/vimrc.vim" > .vimrc
mkdir -p $HOME/.vim/{tmp,undo,backup}
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
cd .vim/bundle
gcl altercation/vim-colors-solarized
cp -R .vim/bundle/vim-colors-solarized/colors $HOME/.vim