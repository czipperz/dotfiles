" Sets to use Vim settings instead of Vi
set nocompatible
""EVERYTHING ELSE FOLLOWS""
" Don't use Ex mode, use Q for formatting
map Q gq
" Need those line numbers
set relativenumber
set number
nnoremap <C-n> :set relativenumber!<cr>
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Sets all temporary and backup files all in one place
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
" Sets how many lines of history VIM has to remember
set history=700
" Always show current position
set ruler
set hid
" Good search routines (highlight and incremental)
set hlsearch
set incsearch
" Set to auto read when a file is changed from the outside
set autoread
" Search ignores case
set ignorecase
" Magic searching
set magic
" Enable syntax highlighting
syntax enable
syntax on
" Colorscheme
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
" Also makes the line controlls more intuitive for stupid me
" and makes the arrow keys disabled in normal and visual mode.
noremap j h
map k gj
map l gk
noremap ; l
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
inoremap <up> <Esc>gka
inoremap <down> <Esc>gja

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif
" Remember info about open buffers on close
set viminfo^=%
" Hitting zero goes to first non-blank character
nnoremap 0 ^
" Hitting shift and 0 will do default 0
nnoremap ) 0
map <Home> <nop>
map <End> <nop>
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

try
    set undodir=~/.vim_runtime/temp_dirs/undodir
	set undofile
catch
endtry

" :W uses :w! instead
command W w !sudo tee % > /dev/null

" Specify the behavior when switching between buffers 
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

set showcmd

" Needed for Syntax Highlighting and Stuff
filetype on
syntax enable
set grepprg=grep\ -nH\ $*

"Use English for spell check but dont spell check by default
if version >= 700
	set spl=en spell
	set nospell
endif

" Tab completion
set wildmenu
set wildmode=list:longest,full

set smartcase

let g:clipbrdDefaultReg = '+'

"Close tab, remove buffer
set nohidden

highlight MatchParen ctermbg=4

"Centers when you search and go up and down in results
map N Nzz
map n nzz

inoremap '' ''<Left>
inoremap "" ""<Left>
inoremap () ()<Left>
inoremap <> <><Left>
inoremap {} {}<Left>
inoremap {<cr> {}<left><cr><cr><Backspace><up><tab>
inoremap [] []<Left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All the following commands are prefixed with 'h' by default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader='h'
let g:mapleader='h'

map <leader> <nop>

" Search and replace with the fassion :%s/find/replace/operator
" operator is g for global, gc for global with confirmation
" Dont put the final slash and operator if you wish to just search the
" selected line
map <leader>r :%s/

map <leader>p <Esc>"+p

" Tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext<cr>
map <leader>l :tabnext<cr>
map <leader>j :tabprevious<cr>
" cd to the dir of current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" Next line and back to normal mode
map <leader>o o<Esc>
map <leader>O O<Esc>
" Switches between Buffers or Windows
nnoremap <leader>k <C-w><C-w>
" Window aka splits the window up
map <leader>swj	:topleft	vnew<cr>
map <leader>sw;	:botright	vnew<cr>
map <leader>swl	:topleft	new<cr>
map <leader>swk	:botright	new<cr>
" Buffer aka splits the current part of the window up
map <leader>sj	:leftabove	vnew<cr>
map <leader>s;	:rightbelow	vnew<cr>
map <leader>sl	:leftabove	new<cr>
map <leader>sk	:rightbelow	new<cr>

map <leader>q :qa<cr>
map <leader>Q :qa!<cr>
map <leader>bq :q<cr>
map <leader>bQ :q!<cr>

map <leader>w :wa<cr>
map <leader>W :wa!<cr>
map <leader>bw :w<cr>
map <leader>bW :w!<cr>
