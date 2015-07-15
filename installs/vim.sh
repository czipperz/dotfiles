#!/usr/bin/bash
mkdir -p $HOME/.vim/{tmp,undo,backup}
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
cd .vim/bundle
gcl altercation/vim-colors-solarized
cp -R .vim/bundle/vim-colors-solarized/colors $HOME/.vim
