" Vim syntax file
" Language:	generic configure file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2005 Jun 20

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	confTodo	contained TODO FIXME XXX
" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
syn match	confComment	"^#.*" contains=confTodo,confString,confSpecial
syn match	confComment	"\s#.*"ms=s+1 contains=confTodo,confString,confSpecial
syn region	confComment	start="^=" end="=$" oneline
syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region	confSpecial	start=+'+ skip=+\\\\\|\\'+ end=+'+
syn region	confSpecial	start=+|+ end=+|+ oneline
syn region	confContext	start="@" end="\>" oneline
syn region	confContext	start="\$" end="\>" oneline
syn region	confArea	start="&" end="\>" oneline

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link confComment	Comment
hi def link confTodo	Todo
hi def link confString	String
hi def link confSpecial	Special
hi def link confContext	Identifier
hi def link confArea	Statement

let b:current_syntax = "conf"

" vim: ts=8 sw=2
