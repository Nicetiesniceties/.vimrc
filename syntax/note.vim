" Vim syntax file
" " Language: My First Syntax for Note Taking
" " Maintainer: Chin Yi Tsai
" " Latest Revision: 3 October 2017
au BufNewFile,BufRead *.note set filetype=note
if exists("b:current_syntax")
	finish
endif
"echom "Do not go gentle into that good night...; Rage, rage against the dying of the light."
"echom "¨Nothing makes a man so adventurous as an empty pocket.¨― Victor Hugo, The Hunchback of Notre Dame"
echom "¨Whelcome back, Njceties!¨–– Note Vim"
let b:current_syntax = "note"

" define some special words
" -------------------------------------------------------------------
syn match noteNode "•" 
syn keyword noteMonths January February March April May June 
syn keyword noteMonths July August September October November December
syn keyword noteDays Monday Tuesday Wednesday Thursday 
syn keyword noteDays Friday Saturday Sunday 
syn match noteNumber '\d\+'
syn match noteNumber '[-+]\d\+'
syn match noteNumber '[-+]\d\+\.\d*'
syn keyword undoneStatus FAIL NOTICE TODO UNDONE
syn keyword doneStatus DONE SCORE SKIP
syn keyword noteWarnings DEADLINE EXAM MIDTERM FINAL
syn keyword noteType TIME NAME DATE URL EMAIL PHONE REASON
syn keyword noteType WHO WHERE WHAT HOW WHEN WHICH
syn match noteOperator	"\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match noteOperator	"<<\|>>\|&&\|||\|++\|--\|->"
syn match noteOperator	"[.!~*&%<>^|=,+-]"
syn match noteOperator	"/[^/*=]"
syn match noteOperator	"/$"
syn match noteOperator "&&\|||"
syn match noteOperator	"[][]"
syn match noteOperator	"[)(]"
syn match noteOperator	"[}{]"
hi def link undoneStatus Statement "red
hi def link noteWarnings Error 
hi def link doneStatus String "green
hi def link noteNumber Typedef "puple
hi def link noteOperator Number "yellow
hi def link noteType Preproc "less blue 
hi def link noteMonths Identifier "blue
hi def link noteDays Identifier "blue
hi def link noteNode Delimiter "orange
" -------------------------------------------------------------------

" define the comment and highlighting
" -------------------------------------------------------------------
syntax region noteString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region noteHighlight1 start=/\v¨/ skip=/\v\\./ end=/\v¨/ "option + u
syntax region noteHighlight2 start=/\v_/ skip=/\v\\./ end=/\v_/ 
syntax region noteUnderline start=/\v[˙]/ skip=/\v\\./ end=/\v[˙]/ "option + h 
"syntax region notelongCooment start=/\v[~]/ skip=/\v\\./ end=/\v[~]/ skipwhite "option + e
syntax match noteComment "\v#.*$" 
"syntax match noteComment "\vDONE.*$" skipwhite
highlight link noteString String
highlight link noteComment Comment
"hi notelongComment ctermfg=Grey
hi def link noteHighlight1 Tag
hi def link noteHighlight2 Identifier
hi noteUnderline cterm=underline

" personal settings
" -------------------------------------------------------------------
syn keyword Courses ADA 自動機 前瞻科技導論 LinearAlgebra SystemPrograming 
syn keyword Courses AmazingUniverse FinancialAccounting 
syn keyword ActivityType GIS Basketball Tutoring Personal SaxophoneQuartet
hi Courses cterm=underline
hi ActivityType cterm=underline
