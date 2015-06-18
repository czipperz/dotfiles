source /home/czipperz/dotfiles/vim/plugins.vim

source /home/czipperz/dotfiles/vim/neosettings.vim

set shell=/bin/bash

" No bells
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

" Extra whitespace
	highlight ExtraWhitespace ctermbg=red guibg=red
	autocmd BufWinEnter * call clearmatches()
	autocmd BufWinLeave * call clearmatches()
	autocmd InsertLeave * call clearmatches()
	autocmd InsertEnter * match ExtraWhitespace /\s\+$\| \+\ze\t\|\t/

"filetype plugin on

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" INCLUDED IN https://github.com/czipperz/vim-sensible
	" so that you can undo CTRL-U after inserting a line break.
	" inoremap <C-U> <C-G>u<C-U>

" Sets all temporary and backup files all in one place
	set backup
	set backupdir=~/.vim/backup
	set directory=~/.vim/tmp

" Sets how many lines of history VIM has to remember
	set history=10000

" Always show current position
	set ruler
	set hid

" Search things
	set hlsearch
	set incsearch
	highlight Search ctermbg=Yellow ctermfg=Black
	set ignorecase
	"Centers when you search and go up and down in results
	map N Nzz
	map n nzz

" Set to auto read when a file is changed from the outside
	set autoread

" Enable syntax highlighting
	set magic
	syntax enable
	syntax on

" Colorscheme
	colorscheme solarized
	let g:airline_theme="sol"
	set background=dark
	set t_Co=256

" Color column #red #bg
" au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Sets tab as width of 4 was like 8
	set shiftwidth=4
	set tabstop=4
	set softtabstop=4
	set noexpandtab
	"set ai
	set si
	"set smarttab

" Wrap lines
set wrap

" Makes long lines as break lines (move up or down vertically one line no matter what)
" Also makes the line controlls more intuitive for stupid me
" and makes the arrow keys disabled in normal and visual mode.
	noremap j h
	nnoremap k gj
	nnoremap l gk
	noremap ; l
	noremap gj gh
	noremap gk j
	noremap gl k
	noremap g; gl
	noremap <up> <nop>
	noremap <down> <nop>
	noremap <left> <nop>
	noremap <right> <nop>
	inoremap <up> <C-o>gk
	inoremap <down> <C-o>gj
	noremap , ;
	noremap K L
	noremap L H
	noremap H K

" Easy escaping
	inoremap hh <Esc>

" Visual mode hacks
	vnoremap k j
	vnoremap l k
	vnoremap . :norm.<cr>
	vnoremap % :norm%<cr>

" Remaps r to c and c to r. More intuitive for me
	nnoremap r c
	nnoremap c r

" So much better (hit 0 to go to start of line, past whitespace. <S-0> will go to start of line, before whitespace)
	nnoremap 0 ^
	nnoremap ) 0
	noremap <Home> <nop>
	noremap <End> <nop>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

set foldmethod=indent

" Remember info about open buffers on close
set viminfo^=%

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
	func! DeleteTrailingWS()
		exe "normal mz"
		%s/\s\+$//ge
		exe "normal `z"
	endfunc

" Custom undo directory
	try
		set undodir=~/.vim/undo
		set undofile
	catch
	endtry

" Commands
	command W w !sudo tee % > /dev/null
	command Wq wq !sudo tee % > /dev/null
	command Q q!

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

" Tab completion - Replacing with neocomplete.vim
	"set wildmenu
	"set wildmode=list:longest,full

set smartcase

" Should auto yank to system register **BROKEN**
	"let g:clipbrdDefaultReg='+'
	set clipboard=unnamedplus

"Close tab, remove buffer
"set nohidden

highlight MatchParen ctermbg=4

" Hitting { and Enter will make the following block and put your cursor
	"	{
	"		here
	"	}
	"imap {<cr> {}<left><cr><cr><Backspace><up><right>

" Unused insert mode auto completions
	" Typing one autocompletes to both
		"inoremap ' ''<Left>
		"inoremap " ""<Left>
		"inoremap ( ()<Left>
		"inoremap < <><Left>
		"inoremap { {}<Left>
		"inoremap [ []<Left>
		"inoremap ` ``<Left>

	" Typing both puts your cursor after it
		"inoremap '' ''
		"inoremap "" ""
		"inoremap () ()
		"inoremap <> <>
		"inoremap {} {}
		"inoremap [] []
		"inoremap `` ``

	" Backslash with the doubles eliminates the second
		"inoremap \' '
		"inoremap \" "
		"inoremap \( (
		"inoremap \< <
		"inoremap \{ {
		"inoremap \[ [
		"inoremap \` `

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

" Exuberant CTags
	nmap <F8> :TagbarToggle<cr>

" Language settings
	" autocmd FileType java source ~/linuxfiles/vim/java.vim
	" autocmd FileType vim,vimrc inoremap " " 
	autocmd BufWrite *.py :call DeleteTrailingWS()
	autocmd BufWrite *.coffee :call DeleteTrailingWS()
	au BufRead,BufNewFile *.hbml setfiletype haml

" Leaders
	" Leader mapping
		let mapleader='h'
		let g:mapleader='h'
		map <leader> <nop>

	" Search and replace
		" Append g for global, c for confirmation
		noremap <leader>r :%s/

	" Tabs
		noremap <leader>tn :tabnew<cr>
		noremap <leader>to :tabonly<cr>
		noremap <leader>tc :tabclose<cr>
		noremap <leader>tm :tabmove 

	" cd to the dir of current buffer
	noremap <leader>cd :cd %:p:h<cr>

	" Next line and back to normal mode
		noremap <leader>o o<Esc>
		noremap <leader>O O<Esc>

	" Switches between Buffers
		noremap <leader>j <C-w>h
		noremap <leader>k <C-w>j
		noremap <leader>l <C-w>k
		noremap <leader>; <C-w>l
		noremap <leader><leader> <C-w><C-w>

	" Splits
		" Window
			map <leader>swj	:topleft	vnew<cr>
			map <leader>sw;	:botright	vnew<cr>
			map <leader>swl	:topleft	new<cr>
			map <leader>swk	:botright	new<cr>
		" Buffer
			map <leader>sj	:leftabove	vnew<cr>
			map <leader>s;	:rightbelow	vnew<cr>
			map <leader>sl	:leftabove	new<cr>
			map <leader>sk	:rightbelow	new<cr>

	" Saving commands
		" Save and quits
		map <leader>x :wq<CR>
		map <leader>X :W<CR>:Q<CR>
		" Writes
		map <leader>w :w<cr>
		map <leader>W :W<cr>
		" Quits
		map <leader>q :q<cr>
		map <leader>Q :Q<cr>

	" fuGITive
		map <leader>gc :Gcommit<cr>
		map <leader>gw :Gwrite<cr>
		map <leader>gp :Gpush origin master<cr>
		map <leader>gd :Gdiff<cr>
