set nocompatible

"Runtime path and initialize
set rtp+=/home/czipperz/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tmhedberg/matchit'
Plugin 'sickill/vim-pasta'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/ZoomWin'
Plugin 'vim-scripts/tComment'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'kien/ctrlp.vim'
Plugin 'rstacruz/sparkup'
Plugin 'godlygeek/tabular'
Plugin 'gmarik/vim-markdown'
Plugin 'wavded/vim-stylus'
Plugin 'gmarik/sudo-gui.vim'
Plugin 'gmarik/ide-popup.vim'
Plugin 'sjl/gundo.vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'
Plugin 'czipperz/vim-surround'
Plugin 'taghighlight'
" Plugin 'scrooloose/nerdtree'
Plugin 'Spaceghost/vim-matchit'
" Requires silver-searcher-git
Plugin 'rking/ag.vim'

call vundle#end()
""filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
