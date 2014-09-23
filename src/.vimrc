" ~/.vimrc
" ==============================================================================

" General
" ==============================================================================

set nocompatible	" Not compatible with the old-fashin vi mode
set shell=/bin/zsh
set noautochdir

"" Enable Filetype Plugins
filetype plugin indent on


" Vundle - Vim plugin manager
" ==============================================================================
"
" Brief help
" -----------
" :PluginList		- List configured bundles
" :PluginInstall(!)	- Install (update) bundles
" :PluginSearch(!) foo	- Search (or refresh cache first) for foo
" :PluginClean(!)	- Confirm (or auto-approve) removal of unused bundles
" 
" see :h vundle for more details or wiki for FAQ

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/neocomplete.vim
call vundle#begin()

"" Let Vundle manage Vundle

Bundle 'gmarik/Vundle.vim'

"" Completion plugins and syntax checkers
Plugin 'Shougo/neocomplete.vim'
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
Plugin 'Shougo/neosnippet-snippets'     " A auto completion framework
Plugin 'Shougo/neosnippet.vim'          " Add snippets 'templates' for completion
Plugin 'honza/vim-snippets'             " Expand the number of snippets
Plugin 'scrooloose/syntastic'           " Syntax checking plugin
    let g:syntastic_check_on_open = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_error_symbol = 'E>'
    let g:syntastic_style_error_symbol = 'e>'
    let g:syntastic_warning_symbol = 'W>'
    let g:syntastic_style_warning_symbol = 'w>'
Plugin 'ervandew/supertab'
Plugin 'craigemery/vim-autotag'         " Automatically discover and update ctags on save

"" IDE-like improvements
Plugin 'majutsushi/tagbar'              " Display tags in a window, ordered by scope
    let g:tagbar_autofocus = 1
    let g:tagbar_ctags_bin = '/usr/bin/ctags'
    map <Leader>t :TagbarToggle<CR>
Plugin 'skibyte/gdb-from-vim'           " Debug program with gdb
Plugin 'Shougo/vinarise.vim'            " Ultimate hex editing system
Plugin 'vim-scripts/taglist.vim'

"" File management plugins
Plugin 'Shougo/unite.vim'               " Display files information in vim
Plugin 'scrooloose/nerdtree'            " Show files in a tree
    map <Leader>f :NERDTreeToggle<CR>
Plugin 'vim-scripts/VOoM'               " Show outlines in the file
    execute "map <leader>v" ":VoomToggle" &ft "<CR><C-W><C-W>"
Plugin 'vim-scripts/utl.vim'            " Go to URL and files
    nmap <leader>o :Utl ol<CR>
    nmap <leader>z 0f<ll\o
Plugin 'vim-scripts/Command-T'          " Fast file navigation
Plugin 'tpope/vim-fugitive'             " A Git wrapper


"" Command-line and external programs compatibility
Plugin 'Shougo/vimshell.vim'            " A shell inside Vim
Plugin 'Shougo/vimproc.vim'             " Necessary for vimshell
Plugin 'ardagnir/shadowvim'             " Use vim in firefox
Plugin 'farseer90718/vim-taskwarrior'   " Support for taskwarrior task management software

"" Syntax files highlighting
Plugin 'clones/vim-zsh'                 " zsh rc files
Plugin 'dahu/vim-asciidoc'              " adoc files
Plugin 'tpope/vim-haml'                 " Haml, Sass and SCSS files
Plugin 'vim-scripts/SyntaxRange'        " Do syntax highlighting in a range of lines
Plugin 'vim-scripts/Txtfmt-The-Vim-Highlighter' " 'Rich text' highlighting in Vim
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
    autocmd BufRead *.md set ft=pandoc

"" Color schemes

"" Editing plugins
Plugin 'scrooloose/nerdcommenter'       " Commands to automatically comment a range of lines
Plugin 'terryma/vim-expand-region'      " Expand the selected region with + and _
    vmap K <Plug>(expand_region_expand)
    vmap L <Plug>(expand_region_expand)
    vmap J <Plug>(expand_region_shrink)
    vmap H <Plug>(expand_region_shrink)
Plugin 'Raimondi/delimitMate'           " Insert-mode auto completion for quotes, parents, brackets...
Plugin 'tpope/vim-surround'             " Select 'surroundings' parentheses, brackets...
Plugin 'godlygeek/tabular'              " Align range of text
    map <leader>/= :Tab /=
    map <leader>/: :Tab /:
    map <leader>/( :Tab / (

"" Colors
Plugin 'gorodinskiy/vim-coloresque'     " Colorize the ID of colors
Plugin 'guns/xterm-color-table.vim'     " Show a table of xterm colors

"" Edition Improvements
Plugin 'junegunn/goyo.vim'              " distraction free mode 
Plugin 'junegunn/limelight.vim'
    autocmd User Goyo Limelight
    autocmd User GoyoEnter Limelight
    autocmd User GoyoLeave Limelight!
    map <Leader>\ :Goyo<CR>

    " Color name (:help cterm-colors) or ANSI code
    let g:limelight_conceal_ctermfg = 'gray'
    let g:limelight_conceal_ctermfg = 240

    " Color name (:help gui-colors) or RGB color
    let g:limelight_conceal_guifg = 'DarkGray'
    let g:limelight_conceal_guifg = '#777777'

    " Default: 0.5
    let g:limelight_default_coefficient = 0.7
Plugin 'vim-scripts/Gundo'              " Visualize Undo Tree
    map <Leader>u :GundoToggle<CR>
Plugin 'bling/vim-airline'
    let g:airline_powerline_fonts = 1

call vundle#end()


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
"set foldopen&		" Enable openning folders by pressing the button "right" over a fold
set foldclose=all	" Close a folder when leaving it
set foldlevel=1
"set foldcolumn=0	" Show a column that display the status of the folders

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
set list		" Display unprintable characters

"" Indention
let g:indent_guides_auto_colors = 0
autocmd VimEnter,ColorScheme * hi IndentGuidesOdd  guibg=red ctermbg=3
autocmd VimEnter,ColorScheme * hi IndentGuidesEven guibg=green ctermbg=4

"" Enable mouse
set mouse=a

"" Open Command-line window
"set cedit=<Esc>

"" Indent
set smarttab		" Be smart when using tabs
set autoindent		" Copy indent from current line when starting a new line 
set smartindent		" Be smart when indenting
set shiftwidth=4	" Shift = 4 spaces
set softtabstop=4	" Tab = 4 spaces
set expandtab		" Expand Tab to spaces (use <C-I> or <C-V><Tab> to insert a tab)
set textwidth=80	" Wrap line after 80 chracters

"" Searching
set incsearch		" Show where the pattern matches as it was typed so far
set hlsearch		" Highlight the search matching text
set smartcase		" Try to be smart about case when searching

"" Completion
set complete=.,w,b,u,k,kspell,t,i,d,    " Controls where the completions are searched
set completeopt=longest,menuone         " Control how the completion occurs
set omnifunc=syntaxcomplete#Complete    " Set the complete function

"" Auto wrap text in some filetypes
set textwidth=80

"" Disable spellchecking
set nospell


" FileType facilities
" ==============================================================================

"" Latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath+=$VIM/vimfiles

"" AsciiDoc
autocmd BufNewFile *.adoc set ft=asciidoc
autocmd BufRead *.adoc set ft=asciidoc
autocmd BufRead /tmp/tmp* set ft=asciidoc
autocmd FileType asciidoc set shiftwidth=4
autocmd FileType asciidoc set softtabstop=4
autocmd FileType asciidoc set expandtab
autocmd FileType asciidoc set textwidth=80
autocmd FileType asciidoc set formatexpr=
autocmd FileType asciidoc set nospell
autocmd FileType asciidoc execute "map <leader>v" ":VoomToggle" &ft "<CR><C-W><C-W>"

"autocmd FileType asciidoc
"			\ setlocal autoindent expandtab softtabstop=2 shiftwidth=2
"			\ formatoptions=tcqn
"			\ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
"			\ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>
"autocmd FileType asciidoc call SyntaxRange#Include('`', '`', 'c')


" File skeletons
" ==============================================================================

command! Project 0read ~/skel/skel.adoc
autocmd BufNewFile *.[ch] 0read ~/skel/skel.c |
			\ execute "normal 3gg" |
			\ execute "read! ~/skel/date.sh" |
			\ execute "normal 3gg$J2gg$" |
			\ execute "normal 2ggA%" |
			\ execute "normal Gdd11gg"


" Key mapping
" ==============================================================================

"" Misc maps
execute "imap <C-W> <C-O><C-W>" | " 
execute "map <Esc><Space> i"    | " 
execute "map - $"               | " 
map <Leader>p "+p
map <Leader>y "+y
map <Leader>P "+P
map H <C-B>
map L <C-F>
map <Leader>h <C-W>h
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>l <C-W>l
nmap Q q

"" Let commands w, q and wq insensitive
execute "cab W w"   | "
execute "cab Q q"   | "
execute "cab Wq wq" | "
execute "cab wQ wq" | "
execute "cab WQ wq" | "

"" Completion
execute "inoremap <C-F> <C-X><C-F>" | " 
execute "inoremap <C-N> <C-X><C-N>" | " 
execute "inoremap <C-D> <C-X><C-D>" | " 
execute "inoremap <C-Space> <C-P>"  | "


