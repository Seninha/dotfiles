" ~/.vimrc
" ==============================================================================

" General
" ==============================================================================

set nocompatible	" Not compatible with the old-fashin vi mode
filetype off
set shell=/bin/zsh
set autochdir

"" Enable Filetype Plugins
filetype plugin indent on
filetype plugin on


" Vundle - Vim plugin manager
" ==============================================================================
"
" Brief help
"------------
" :BundleList		- List configured bundles
" :BundleInstall(!)	- Install (update) bundles
" :BundleSearch(!) foo	- Search (or refresh cache first) for foo
" :BundleClean(!)	- Confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed
" 

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

"" My Bundles here:
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-surround'
Bundle 'garbas/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/TeTrIs.vim'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'vim-scripts/utl.vim'
Bundle 'vim-scripts/Txtfmt-The-Vim-Highlighter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'terryma/vim-expand-region'
Bundle 'junegunn/goyo.vim'
Bundle 'Shougo/neocomplete.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'Lokaltog/powerline'
" Bundle 'bling/vim-airline'
" Bundle 'edkolev/tmuxline.vim'
Bundle 'Shougo/unite.vim'
Bundle 'clones/vim-zsh'


" Plugins Management
" ------------------

" let g:notes_directories = '~/documentos/organização/20'

"" NeoComplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

"" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = "molokai"


" User Interface
" ==============================================================================

set nu			" Show line number
set ruler		" Show column and line number and relative position of the cursor in the file
set laststatus=2 	" Always show the statusline
set showcmd		" Show a command as it is being typed
set showmode		" Show current mode
set cursorline		" Highlight the screen line of the cursor

"" Folding
set foldmethod=marker	" Enable folding (hiding) parts of the file based in manual region setting
set foldopen&		" Enable openning folders by pressing the button "right" over a fold
set foldclose=all	" Close a folder when leaving it
set foldcolumn=4	" Show a column that display the status of the folders

if has('gui_running')
	set guioptions-=T
endif

"" Syntax Highlighting
syntax on
colorscheme epic
set background=dark

"" How text is displayed
set nowrap		" Lines longer than the width of the window will not wrap
set nowrapscan		" Disable wrapscan
set listchars=tab:»·	" String to use for the :list command
set textwidth=80	" Set width of text
set list		" Display unprintable characters


" Facilities to the User
" ==============================================================================

set clipboard=unnamed	" Yank to the system register by default

"" Indent
set smarttab		" Be smart when using tabs
set autoindent		" Copy indent from current line when starting a new line 
set smartindent		" Be smart when indenting

"" Searching
set incsearch		" Show where the pattern matches as it was typed so far
set hlsearch		" Highlight the search matching text
set smartcase		" Try to be smart about case when searching

"" Completion
set complete=.,b,u,k,]			" Controls where the completions are searched
set completeopt=longest,menuone		" Control how the completion occurs
set omnifunc=syntaxcomplete#Complete	" Set the complete function


" Key mapping
" ==============================================================================

"" Movement between windows
imap <C-W> <C-O><C-W>

"" Movement between windows
map <M-Left> b
map <M-Right> w
imap <M-Left> <C-O>b
imap <M-Right> <C-O>w

"" Emacs-like, Readline-like and Nano-like bindkeys in insertion mode
imap <C-U> <C-O>d0
imap <C-K> <C-O>d$
imap <M-BS> <C-O>db
imap <M-DEL> <C-O>dw
imap <C-DEL> <C-O>diw

"" Let commands w, q and wq insensitive
cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq

"" Completion
inoremap <C-F> <C-X><C-F>
inoremap <C-L> <C-X><C-L>
inoremap <C-N> <C-X><C-N>
inoremap <C-D> <C-X><C-D>
inoremap <C-Space> <C-P>


" Syntastic: syntax checking plugin
" ==============================================================================

let g:syntastic_check_on_open = 1

" Open error window automatically
let g:syntastic_auto_loc_list = 1

" Errors and Warnings symbols
let g:syntastic_error_symbol = 'E>'
let g:syntastic_style_error_symbol = 'e>'
let g:syntastic_warning_symbol = 'W>'
let g:syntastic_style_warning_symbol = 'w>'


" File skeletons
" ==============================================================================

autocmd BufNewFile *.[ch] 0read ~/skel/skel.c |
			\ execute "normal 3gg" |
			\ execute "read! ~/skel/date.sh" |
			\ execute "normal 3gg$J2gg$" |
			\ execute "normal Gdd11gg"

