" Set to auto read when a file is changed from the outside
set autoread
" Search ignores case
set ignorecase
" Magic searching
set magic
" Enable syntax highlighting
syntax enable
" Awesome
colorscheme desert
" Still want the darkness to eat you
set background=dark
" Smarts
set smarttab
" Sets tab as width of 4 was like 8
set shiftwidth=4
set tabstop=4
" Auto and smart indent
set ai
set si
" Wrap lines
set wrap
" Makes long lines as break lines (move up or down vertically one line no matter what) 
map j gj
map k gk
" Applies styles on j and k above to the arrow keys
map <down> j
map <up> k
map <left> h
map <right> l
" Searches for current selection
vnoremap <silent> <space> :call VisualSelection('f')<CR>
vnoremap <silent> <c-space> :call VisualSelection('b')<CR>
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif
" Remember info about open buffers on close
set viminfo^=%
" Hitting zero goes to first non-blank character
map 0 ^
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
