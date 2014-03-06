" Epic Vim color file
" Maintainer: Lucas de Sena (Seninha) <lucas.ta23@gmail.com>
" Last Change: 2013-10-26


" ============
" = 1. Intro =
" ============
" > Remove all existing highlighting and set the ColorScheme name

set background=dark
hi clear
if exists ("syntax_on")
	syntax reset
endif

let colors_name = "epic"


" =======================
" = 2. Set color groups =
" =======================
" This is the "Tango" color palette
" You can change each color by keeping its name unchanged and changing the
"   hexcode of color

" gvim color pallete:

let light_butter = '#fce94f'
let mid_butter   = '#edd400'
let dark_butter  = '#c4a000'

let light_orange = '#fcaf3e'
let mid_orange   = '#f57900'
let dark_orange  = '#ce5c00'

let light_chocolate = '#e9b96e'
let mid_chocolate   = '#c17d11'
let dark_chocolate  = '#8f5902'

let light_chameleon = '#8ae234'
let mid_chameleon   = '#73d216'
let dark_chameleon  = '#4e9a06'

let light_skyblue = '#729fcf'
let mid_skyblue   = '#3465a4'
let dark_skyblue  = '#204a87'

let light_plum = '#ad7fa8'
let mid_plum   = '#75507b'
let dark_plum  = '#5c3566'

let light_scarletred = '#ef2929'
let mid_scarletred   = '#cc0000'
let dark_scarletred  = '#a40000'

let light_white = '#eeeeec'
let mid_white   = '#d3d7cf'
let dark_white  = '#babdb6'

let light_black = '#888a85'
let mid_black   = '#555753'
let dark_black  = '#2e3436'

" xterm color pallete
" (xterm supports only 256 colors, then there isn't a "mid" version for each color):

let tlight_butter = '11'
let tdark_butter  = '3'

let tlight_orange = '215'
let tdark_orange  = '202'

let tlight_chocolate = '136'
let tdark_chocolate  = '94'

let tlight_chameleon = '10'
let tdark_chameleon  = '2'

let tlight_skyblue = '12'
let tdark_skyblue  = '4'

let tlight_plum = '13'
let tdark_plum  = '5'

let tlight_scarletred = '9'
let tdark_scarletred  = '1'

let tlight_white = '250'
let tdark_white  = '251'

let tlight_black = '240'
let tdark_black  = '0'


" =================
" = Coloring gvim =
" =================
" Use this syntax:
"
" exe 'hi <group name>     guifg='.<color1>.     ' guibg='.<color2>.     ' gui=<flags>'
"
" Copy this line exactly as it is, and replace <something> by other thing you want
" In this line, "<flags>" can be (case insensitive):
"      · Bold
"      · Underline
"      · Undercurl
"      · Reverse
"      · Inverse
"      · Italic
"      · Standout
"      · NONE
" You can use multiple <attr> separeted with ,
if has ('gui_running')

	" Vim text drawing
	exe 'hi Normal'       ' guifg='.light_white.          ' guibg='.dark_black.          ' gui=None'     
	exe 'hi Underlined'   ' guifg='.light_white.          ' guibg='.dark_black.          ' gui=Underline'
	exe 'hi NonText'      ' guifg='.dark_white.           ' guibg='.dark_black.          ' gui=None'     
	exe 'hi SpecialKey'   ' guifg='.light_skyblue.        ' guibg='.dark_black.          ' gui=None'     
	exe 'hi Visual'                                                                      ' gui=Reverse'

	" Vim misc drawing
	exe 'hi Search'       ' guifg='.dark_black            ' guibg='.light_butter.        ' gui=None'
	exe 'hi Directory'    ' guifg='.dark_black.           ' guibg='.light_chameleon.     ' gui=None'
	exe 'hi Error'        ' guifg='.light_white.          ' guibg='.light_scarletred.    ' gui=None'
	exe 'hi ErrorMsg'     ' guifg='.light_white.          ' guibg='.light_scarletred.    ' gui=None'
	exe 'hi ModeMsg'      ' guifg='.dark_butter.          ' guibg='.dark_skyblue.        ' gui=Bold'
	exe 'hi Pmenu'                                        ' guibg='.dark_white.          ' gui=Bold'

	" Vim lines and columns
	exe 'hi LineNr'       ' guifg='.dark_butter.          ' guibg='.mid_black.           ' gui=Bold'            
	exe 'hi StatusLine'   ' guifg='.light_white.          ' guibg='.mid_skyblue.         ' gui=Italic,Underline'
	exe 'hi StatusLineNC' ' guifg='.mid_white.            ' guibg='.mid_black.           ' gui=Italic,Underline'
	exe 'hi VertSplit'    ' guifg='.mid_skyblue.          ' guibg='.mid_skyblue.         ' gui=None'            
	exe 'hi Folded'       ' guifg='.light_skyblue.        ' guibg='.dark_skyblue.        ' gui=None'            
	exe 'hi FoldColumn'   ' guifg='.light_skyblue.        ' guibg='.dark_skyblue.        ' gui=None'            
	exe 'hi SignColumn'   ' guifg='.light_skyblue.        ' guibg='.dark_skyblue.        ' gui=None'            
	exe 'hi TabLine'      ' guifg='.dark_black.           ' guibg='.dark_skyblue.        ' gui=None'
	exe 'hi TabLineSel'   ' guifg='.light_skyblue.        ' guibg='.dark_black.          ' gui=None'
	exe 'hi TabLineFill'  ' guifg='.light_white.          ' guibg='.dark_skyblue.        ' gui=None'

	" Code comments and preprocessor elements
	exe 'hi Comment'      ' guifg='.light_skyblue.        ' guibg='.dark_black.          ' gui=Italic,Bold'
	exe 'hi TODO'         ' guifg='.light_scarletred.     ' guibg='.light_butter.        ' gui=Italic,Bold'
	exe 'hi Title'        ' guifg='.light_scarletred.     ' guibg='.mid_black.           ' gui=None'       
	exe 'hi PreProc'      ' guifg='.light_skyblue.        ' guibg='.dark_black.          ' gui=None'       

	" Code specific elements
	exe 'hi Constant'     ' guifg='.light_plum.           ' guibg='.dark_black.          ' gui=None'
	exe 'hi String'       ' guifg='.light_scarletred.     ' guibg='.dark_black.          ' gui=Bold'
	exe 'hi Special'      ' guifg='.light_plum.           ' guibg='.dark_black.          ' gui=None'
	exe 'hi Identifier'   ' guifg='.light_chameleon.      ' guibg='.dark_black.          ' gui=Bold'
	exe 'hi Statement'    ' guifg='.dark_butter.          ' guibg='.dark_black.          ' gui=None'
	exe 'hi Conditional'  ' guifg='.dark_butter.          ' guibg='.dark_black.          ' gui=Bold'
	exe 'hi Repeat'       ' guifg='.dark_butter.          ' guibg='.dark_black.          ' gui=Bold'
	exe 'hi Structure'    ' guifg='.dark_chocolate.       ' guibg='.dark_black.          ' gui=None'
	exe 'hi Function'     ' guifg='.dark_chameleon.       ' guibg='.dark_black.          ' gui=Bold'
	exe 'hi Operator'     ' guifg='.light_orange.         ' guibg='.dark_black.          ' gui=None'
	exe 'hi Type'         ' guifg='.dark_chameleon.       ' guibg='.dark_black.          ' gui=None'


" =====================
" = Coloring Terminal =
" =====================
" Coloring terminal works like coloring gvim, except for some quirks:
"
"     - The default bg cannot be setted (it prevent some issues when the
"     terminal background differs from the colorscheme bg).
"
"     - The "Underline" and "Italic" flags cannot be used (because some
"     terminals doesn't support rendering italic and underlined texts).
"
"     - The "Normal" group name cannot be setted (it prevents some troubles
"     when the terminal foreground differs from the colorscheme foreground).
"
"     - The "CursorLine" and "CursorColumn" group names cannot be setted (it
"     prevents some issues while drawing the CursorLine/CursorColumn.
else

	" Vim text drawing
	exe 'hi Underlined'   ' ctermfg='.tdark_white.                                       ' cterm=None'
	exe 'hi NonText'      ' ctermfg='.tdark_white.                                       ' cterm=None'
	exe 'hi SpecialKey'   ' ctermfg='.tlight_skyblue.                                    ' cterm=None'
	exe 'hi Visual'                                                                      ' cterm=Reverse'
	exe 'hi Cursor'                                                                      ' cterm=Reverse'

	" Vim misc drawing
	exe 'hi Search'       ' ctermfg='.tdark_black         ' ctermbg='.tlight_butter.     ' cterm=None'
	exe 'hi Directory'    ' ctermfg='.tdark_black.        ' ctermbg='.tlight_chameleon.  ' cterm=None'
	exe 'hi Error'        ' ctermfg='.tlight_white.       ' ctermbg='.tlight_scarletred. ' cterm=None'
	exe 'hi ErrorMsg'     ' ctermfg='.tlight_butter.      ' ctermbg='.tlight_scarletred. ' cterm=Bold'
	exe 'hi WarningMsg'   ' ctermfg='.tlight_scarletred.  ' ctermbg='.tlight_butter.     ' cterm=Bold'
	exe 'hi ModeMsg'      ' ctermfg='.tdark_butter.       ' ctermbg='.tdark_skyblue.     ' cterm=Bold'
	exe 'hi Pmenu'                                        ' ctermbg='.tdark_white.     ' cterm=Bold'

	" Vim lines and columns
	exe 'hi LineNr'       ' ctermfg='.tdark_butter.                                      ' cterm=Bold'
	exe 'hi StatusLine'   ' ctermfg='.tdark_butter.       ' ctermbg='.tdark_skyblue.     ' cterm=Bold'
	exe 'hi StatusLineNC' ' ctermfg='.tlight_skyblue.     ' ctermbg='.tdark_white.       ' cterm=none'
	exe 'hi VertSplit'    ' ctermfg='.tdark_skyblue.      ' ctermbg='.tdark_skyblue.     ' cterm=None'
	exe 'hi Folded'       ' ctermfg='.tlight_skyblue.     ' ctermbg='.tdark_skyblue.     ' cterm=None'
	exe 'hi FoldColumn'   ' ctermfg='.tlight_skyblue.     ' ctermbg='.tdark_skyblue.     ' cterm=None'
	exe 'hi SignColumn'   ' ctermfg='.tlight_skyblue.     ' ctermbg='.tdark_skyblue.     ' cterm=None'
	exe 'hi TabLine'      ' ctermfg='.tdark_black.        ' ctermbg='.tdark_skyblue.     ' cterm=None'
	exe 'hi TabLineSel'   ' ctermfg='.tlight_skyblue.     ' ctermbg='.tdark_black.       ' cterm=None'
	exe 'hi TabLineFill'  ' ctermfg='.tlight_white.       ' ctermbg='.tdark_skyblue.     ' cterm=None'

	" Code comments and preprocessor elements
	exe 'hi Comment'      ' ctermfg='.tlight_skyblue.                                    ' cterm=Bold'
	exe 'hi TODO'         ' ctermfg='.tlight_scarletred.  ' ctermbg='.tlight_butter.     ' cterm=None'
	exe 'hi Title'        ' ctermfg='.tlight_scarletred.                                 ' cterm=None'
	exe 'hi PreProc'      ' ctermfg='.tlight_skyblue.                                    ' cterm=None'

	" Code specific elements
	exe 'hi Constant'     ' ctermfg='.tlight_plum.                                       ' cterm=None'
	exe 'hi String'       ' ctermfg='.tlight_scarletred.                                 ' cterm=Bold'
	exe 'hi Special'      ' ctermfg='.tlight_plum.                                       ' cterm=None'
	exe 'hi Identifier'   ' ctermfg='.tlight_chameleon.                                  ' cterm=Bold'
	exe 'hi Statement'    ' ctermfg='.tdark_butter.                                      ' cterm=None'
	exe 'hi Conditional'  ' ctermfg='.tdark_butter.                                      ' cterm=Bold'
	exe 'hi Repeat'       ' ctermfg='.tdark_butter.                                      ' cterm=Bold'
	exe 'hi Structure'    ' ctermfg='.tdark_chocolate.                                   ' cterm=None'
	exe 'hi Function'     ' ctermfg='.tdark_chameleon.                                   ' cterm=Bold'
	exe 'hi Operator'     ' ctermfg='.tlight_orange.                                     ' cterm=None'
	exe 'hi Type'         ' ctermfg='.tdark_chameleon.                                   ' cterm=None'

endif

" vim:ft=vim:
