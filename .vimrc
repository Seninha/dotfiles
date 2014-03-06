" --------------------------------------------------------
" ~/.vimrc
" Made by Lucas de Sena (Seninha) <lucas.ta23@gmail.com>
" Last edited in 2014-01-04
" --------------------------------------------------------


" 1. Basic Configurations
" ==============================================================================

set shell=/bin/bash
set autochdir


" 2. Vundle - Vim plugin manager
" ==============================================================================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'tpope/vim-surround'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/TeTrIs.vim'

filetype plugin indent on	" Enable filetype specific highlighting 

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


" 3. Graphical Improvements
" ==============================================================================

set nu			" Show line number
set ruler		" Show column and line number and relative position of the cursor in the file
set laststatus=2 	" Always show the statusline
set showcmd		" Show a command as it is being typed
"set cursorline		" Highlight the screen line of the cursor

" Folding
set foldmethod=marker	" Enable folding (hiding) parts of the file based in manual region setting
set foldopen&		" Enable openning folders by pressing the button "right" over a fold
set foldclose=all	" Close a folder when leaving it
set foldcolumn=4	" Show a column that display the status of the folders

if has('gui_running')
	set guioptions-=T
endif


" 4. Syntastic: syntax checking plugin
" ==============================================================================

let g:syntastic_check_on_open = 1

" Open error window automatically
let g:syntastic_auto_loc_list = 1

" Errors and Warnings symbols
let g:syntastic_error_symbol = 'E>'
let g:syntastic_style_error_symbol = 'e>'
let g:syntastic_warning_symbol = 'W>'
let g:syntastic_style_warning_symbol = 'w>'


" 5. How text is displayed
" ==============================================================================

set autoindent		" Copy indent from current line when starting a new line 

set incsearch		" Show where the pattern matches as it was typed so far
set hlsearch		" Highlight the search matching text

set nowrap		" Lines longer than the width of the window will not wrap
set nowrapscan		" Disable wrapscan

set listchars=tab:»·	" String to use for the :list command
set list		" Display unprintable characters


" 6. New Commands
" ==============================================================================

" Let commands w, q and wq insensitive
cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq

imap <C-W> <C-O><C-W>



" 7. File skeletons
" ==============================================================================

autocmd BufNewFile *.[ch] 0read ~/skel/skel.c |
			\ execute "normal 3gg" |
			\ execute "read! ~/skel/date.sh" |
			\ execute "normal 3gg$J2gg$" |
			\ execute "normal Gdd11gg"


" 8. Vim Color Improvements
" ==============================================================================

syntax on			" Enable syntax highlighting

colorscheme epic

" if has('gui_running')
" 	colorscheme epic
" else
" 	colorscheme peachpuff		" Set colorscheme
" endif


" 9. Define a Header
" ==============================================================================

