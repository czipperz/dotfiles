"EVERYTHING ELSE FOLLOWS"
set shell=/bin/bash

set novisualbell
set noerrorbells

set noerrorbells visualbell t_vb=
if has('autocmd')
	autocmd GUIEnter * set visualbell t_vb=
endif

" Don't use Ex mode, use Q for formatting
map Q gq

" Need those line numbers
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
		highlight LineNr ctermfg=red
	else
		set relativenumber
		set number
		highlight LineNr ctermfg=yellow
	endif
endfunc
set number
nnoremap \ :call NumberToggle()<cr>

highlight Search ctermbg=Yellow ctermfg=Black

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * call clearmatches()
autocmd BufWinLeave * call clearmatches()
autocmd InsertLeave * call clearmatches()
autocmd InsertEnter * match ExtraWhitespace /\s\+$\| \+\ze\t\|\t/

"filetype plugin on

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
colorscheme Tomorrow-Night
let g:airline_theme="sol"

" Color column #red #bg
" au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Still want the darkness to eat you
set background=dark

" Smarts
"set smarttab

" Sets tab as width of 4 was like 8
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab

" Auto and smart indent
"set ai
set si

" Wrap lines
set wrap

" Makes long lines as break lines (move up or down vertically one line no matter what)
" Also makes the line controlls more intuitive for stupid me
" and makes the arrow keys disabled in normal and visual mode.
noremap j h
noremap k gj
noremap l gk
noremap ; l
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
inoremap <up> <Esc>gka
inoremap <down> <Esc>gja

"Shift + Enter goes up a line (and zeroes)
nnoremap <S-cr> kk<cr>

" Remaps r to c and c to r. More intuitive for me
nnoremap r c
nnoremap c r

" So much better (hit 0 to go to start of line, past whitespace. <S-0> will go to start of line, before whitespace)
nnoremap 0 ^
nnoremap ) 0

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

" Remember info about open buffers on close
set viminfo^=%
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
	set undodir=~/.vim/tmp/undo
	set undofile
catch
endtry

" :W uses :w!
command W w !sudo tee % > /dev/null

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

set showcmd

" Needed for Syntax Highlighting and Stuff
"filetype on
"syntax enable
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

"let g:clipbrdDefaultReg='+'
set clipboard=unnamedplus

"Close tab, remove buffer
set nohidden

highlight MatchParen ctermbg=4

"Centers when you search and go up and down in results
map N Nzz
map n nzz

" Hitting { and Enter will make the following block and put your cursor
"	{
"		here
"	}
inoremap {<cr> {}<left><cr><cr><Backspace><up><right>

" Typing one autocompletes to both
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap < <><Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ` ``<Left>

" Typing both puts your cursor after it
inoremap '' ''
inoremap "" ""
inoremap () ()
inoremap <> <>
inoremap {} {}
inoremap [] []
inoremap `` ``

" Backslash with the doubles eliminates the second
inoremap \' '
inoremap \" "
inoremap \( (
inoremap \< <
inoremap \{ {
inoremap \[ [
inoremap \` `

command Q q!

" Tabbing Guaranteed
nnoremap <Tab> i<Tab><Esc><Right>

" Gundo
nnoremap <F5> :GundoToggle<cr>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1

" Nerd tree - **NOT INSTALLED** at the moment
"nnoremap <F4> :NERDTreeToggle<cr>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap <F8> :TagbarToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType java source ~/linuxfiles/vim/java.vim
" autocmd FileType vim,vimrc inoremap " " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All the following commands are prefixed with 'h' by default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader='h'
let g:mapleader='h'

map <leader> <nop>

" Search and replace with the fassion :%s/find/replace/operator
" operator is g for global, gc for global with confirmation
" Dont put the final slash and operator if you wish to just search the
" selected line
map <leader>r :%s/

" Tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext<cr>
map <leader>l :tabnext<cr>
map <leader>j :tabprevious<cr>

" cd to the dir of current buffer
map <leader>cd :cd %:p:h<cr>

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

" Save and quits
map <leader>a :wa<cr>
map <leader>A :Wa<cr>
map <leader>e :exit<CR>
map <leader>E :exit!<CR>

map <leader>w :w<cr>
map <leader>W :W<cr>
map <leader>q :q<cr>
map <leader>Q :Q<cr>

source /home/czipperz/linuxfiles/vim/plugins.vim
