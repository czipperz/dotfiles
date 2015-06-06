if has('vim_starting')
if &compatible
set nocompatible
endif
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'




"NeoBundle 'Shougo/vimproc'
"NeoBundle 'Shougo/vimshell.vim' "Depends on the above
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'gmarik/Vundle.vim'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'sickill/vim-pasta'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ervandew/supertab'
NeoBundle 'vim-scripts/ZoomWin'
NeoBundle 'vim-scripts/tComment'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'rstacruz/sparkup'
NeoBundle 'godlygeek/tabular'
NeoBundle 'gmarik/vim-markdown'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'gmarik/sudo-gui.vim'
NeoBundle 'gmarik/ide-popup.vim'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'AndrewRadev/splitjoin.vim'
"NeoBundle 'powerline/powerline'
"NeoBundle 'zhaocai/linepower.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'czipperz/vim-surround'
NeoBundle 'taghighlight'
NeoBundle 'Spaceghost/vim-matchit'
NeoBundle 'rking/ag.vim' "Requires silver-searcher-git
NeoBundle 'tomasr/molokai'
"NeoBundle 'scrooloose/nerdtree'




call neobundle#end()
filetype plugin indent on
NeoBundleCheck
