" "man.vim" - Vim syntax file
"
" Last Change:  2014-02-03
" Maintainer:   Lucas de Sena <lucas.ta23@gmail.com>
" License:      This file is placed in public domain.

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Get the CTRL-H syntax to handle backspaced text
if version >= 600
  runtime! syntax/ctrlh.vim
else
  source <sfile>:p:h/ctrlh.vim
endif

syn case ignore

syn match  manTitle           "^\f\+([0-9]\+[a-z]\=).*"
syn match  manSectionTitle    "^\u\{2,}\(\s\+\u\{2,}\)*"

syn match  manReference       "\f\+([1-9][a-z]\=)"

syn match  manSectionHeading  "^[a-z][a-z ]*[a-z]$"
syn match  manSubHeading      "^\s\{3}\S.*$"

syn match  manOptionDesc      "\<[+-][a-z0-9=\[\]\-+\|.]\+" contains=manOptionArg
syn match  manOptionDesc      " \{7}[+-][a-z0-9=\[\]\-+\|.]\+ \f$" contains=manOptionArg
syn match  manOptionList      " \{9}[+-]-\=.*" contains=manOptionArg,manOptionDesc
syn match  manOptionArg       "=\f\+"ms=s+1 "\<\f\>" contained

" syn match  manHistory		"^[a-z].*last change.*$"

"if getline(1) =~ '^[a-zA-Z_]\+([23])'
"  syntax include @cCode <sfile>:p:h/c.vim
"  syn match manCFuncDefinition  display "\<\h\w*\>\s*("me=e-1 contained
"  syn region manSynopsis start="^SYNOPSIS"hs=s+8 end="^\u\+\s*$"me=e-12 keepend contains=manSectionHeading,@cCode,manCFuncDefinition
"endif


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet

hi link manTitle            Title
hi link manReference        PreProc
hi link manSectionHeading   Title
hi link manSubHeading       Title

hi link manOptionDesc       Title
hi link manOptionArg        Function
hi link manCFuncDefinition Function

let b:current_syntax = "man"

"syn case ignore
"" following four lines taken from Vim's <man.vim>:
"syn match  manSubSectionTitle	'^\s+\zs\u\{2,}\(\s\+\u\{2,}\)*'
"syn match  manSectionHeading	"^\l[a-z ]*\l$"
"
""syn match  manSectionHeading	"^\s\+\d\+\.[0-9.]*\s\+\u.*$"		contains=manSectionNumber
"syn match  manSectionNumber	"^\s\+\d\+\.\d*"			contained
"syn region manDQString		start='[^a-zA-Z"]"[^", )]'lc=1		end='"'		end='^$' contains=manSQString
"syn region manSQString		start="[ \t]'[^', )]"lc=1		end="'"		end='^$'
"syn region manSQString		start="^'[^', )]"lc=1			end="'"		end='^$'
"syn region manBQString		start="[^a-zA-Z`]`[^`, )]"lc=1		end="[`']"	end='^$'
"syn region manBQString		start="^`[^`, )]"			end="[`']"	end='^$'
"syn region manBQSQString	start="``[^),']"			end="''"	end='^$'
"syn match  manBulletZone	"^\s\+o\s"				transparent contains=manBullet
"syn case match
"
"syn keyword manBullet		o					contained
"syn match   manBullet		"\[+*]"					contained
"syn match   manSubSectionStart	"^\*"					skipwhite nextgroup=manSubSection
"syn match   manSubSection	".*$"					contained
"syn match   manOptionWord	"\s[+-]\a\+\>"
"
"syn match manSubTitle		/\(.\b.\)\+/	contains=manSubTitleHide
"syn match manUnderline		/\(_\b.\)\+/	contains=manSubTitleHide
"syn match manSubTitleHide	/.\b/		conceal contained
"
"" my RH8 linux's man page puts some pretty oddball characters into its
"" manpages...
"silent! %s/’/'/ge
"silent! %s/−/-/ge
"silent! %s/‐$/-/e
"silent! %s/‘/`/ge
"silent! %s/‐/-/ge
"norm! 1G
"
"set ts=8
"
"com! -nargs=+ HiLink hi def link <args>
"
"HiLink manTitle		Title
""  HiLink manSubTitle		Statement
"HiLink manUnderline		Type
"HiLink manSectionHeading	Statement
"HiLink manOptionDesc		Constant
"
"HiLink manReference		PreProc
"HiLink manSectionTitle	Function
"HiLink manSectionNumber	Number
"HiLink manDQString		String
"HiLink manSQString		String
"HiLink manBQString		String
"HiLink manBQSQString		String
"HiLink manBullet		Special
"if has("win32") || has("win95") || has("win64") || has("win16")
" if &shell == "bash"
"  hi manSubSectionStart	term=NONE      cterm=NONE      gui=NONE      ctermfg=black ctermbg=black guifg=navyblue guibg=navyblue
"  hi manSubSection		term=underline cterm=underline gui=underline ctermfg=green guifg=green
"  hi manSubTitle		term=NONE      cterm=NONE      gui=NONE      ctermfg=cyan  ctermbg=blue  guifg=cyan     guibg=blue
" else
"  hi manSubSectionStart	term=NONE      cterm=NONE      gui=NONE      ctermfg=black ctermbg=black guifg=black    guibg=black
"  hi manSubSection		term=underline cterm=underline gui=underline ctermfg=green guifg=green
"  hi manSubTitle		term=NONE      cterm=NONE      gui=NONE      ctermfg=cyan  ctermbg=blue  guifg=cyan     guibg=blue
" endif
"else
" hi manSubSectionStart	term=NONE      cterm=NONE      gui=NONE      ctermfg=black ctermbg=black guifg=navyblue guibg=navyblue
" hi manSubSection		term=underline cterm=underline gui=underline ctermfg=green guifg=green
" hi manSubTitle		term=NONE      cterm=NONE      gui=NONE      ctermfg=cyan  ctermbg=blue  guifg=cyan     guibg=blue
"endif
""  hi link manSubSectionTitle	manSubTitle
"
"delcommand HiLink
"
"let b:current_syntax = "man"

" vim:ts=8
