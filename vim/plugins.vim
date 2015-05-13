set nocompatible

"Runtime path and initialize
set rtp+=/home/czipperz/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'Shougo/vimproc'
"Plugin 'Shougo/vimshell.vim' "Depends on the above
Plugin 'majutsushi/tagbar'
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
" Plugin 'powerline/powerline'
" Plugin 'zhaocai/linepower.vim'
Plugin 'bling/vim-airline'
Plugin 'czipperz/vim-surround'
Plugin 'taghighlight'
Plugin 'Spaceghost/vim-matchit'
Plugin 'rking/ag.vim' "Requires silver-searcher-git
Plugin 'tomasr/molokai'
" Plugin 'scrooloose/nerdtree'

call vundle#end()
""filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
