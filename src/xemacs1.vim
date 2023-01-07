
" Vim color file
" Maintainer:   tranquility@portugalmail.pt
" Last Change: 5 June 2002


" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="xemacs1"


hi Normal				guibg=#cdcecd guifg=red
hi Cursor				guibg=red guifg=grey gui=bold
hi VertSplit		guibg=grey60 guifg=black gui=none
" hi Folded				guibg=royalblue3 guifg=white
hi FoldColumn		guibg=royalblue4 guifg=white
hi ModeMsg			guifg=#cdcecd guibg=black
hi MoreMsg			guifg=#cdcecd guibg=black
hi NonText			guifg=black guibg=#cdcecd gui=none
hi Question			guifg=black
hi Search		    ctermfg=0 ctermbg=7	guibg=#aceeee
hi SpecialKey		guifg=navyblue
hi Special		guifg=navyblue
hi StatusLine		guibg=#b7b7b7 guifg=black gui=none
hi StatusLineNC	guibg=#a6b7b7 guifg=black gui=none
hi Title				guifg=bisque3
hi Subtitle			guifg=black
hi Visual				guibg=#a4a5a3 guifg=black gui=none
hi WarningMsg		guibg=#cdcecd guifg=black gui=bold
hi LineNr			ctermfg=19 guifg=red guibg=black  " 行号 
hi CursorLineNr		ctermfg=84 guibg=#cdcecd guifg=navyblue cterm=bold
hi Comment			ctermfg=28 guifg=red guibg=black  " 注释 
hi Constant			ctermfg=79 guifg=#008900  " 变量
hi Identifier		ctermfg=81 guibg=#cdcecd guifg=black cterm=bold  "自定义函数
hi Statement		guifg=royalblue4
hi PreProc			ctermfg=51 guifg=#00ff00 cterm=bold
hi Type				ctermfg=109	guifg=#4a81b4 gui=NONE cterm=bold  " Exception
hi Ignore				guifg=grey29 cterm=bold
hi Todo			    ctermfg=1 guibg=gold guifg=black
hi WildMenu			guibg=#b7b7b7 guibg=grey91 cterm=bold
hi Directory		guibg=#cdcecd guifg=navyblue

" Python
hi pythonBuiltin            ctermfg=45 "function, such as range, print
hi pythonBuiltinFunc        ctermfg=196  cterm=underline
hi pythonBuiltinObj         ctermfg=030  cterm=underline
hi pythonCustomFunc         ctermfg=126  cterm=underline 
hi pythonDecorator          ctermfg=055 cterm=underline
hi pythonInclude            ctermfg=49  " Python imports, etc
hi pythonInstances          ctermfg=126  cterm=underline  
hi pythonStatement          ctermfg=121 cterm=bold " as, def
hi pythonConditional        ctermfg=214 cterm=bold " if, else
hi pythonRepeat	            ctermfg=202 cterm=underline  " for
hi pythonOperator           ctermfg=166  " in
hi pythonException          ctermfg=87  cterm=underline  " try exception raise
hi pythonBuiltinConstant    ctermfg=165  cterm=underline
hi pythonBoolean            ctermfg=163 cterm=underline
hi pythonAttribute          ctermfg=141 cterm=underline
hi pythonString             ctermfg=39 " strings
hi pythonQuotes             ctermfg=220  cterm=bold " 引号
hi docstring                ctermfg=19 cterm=underline
hi pythonClass              ctermfg=1 cterm=underline,bold
hi pythonClassParameters              ctermfg=1 cterm=underline,bold
" hi pythonNumber guifg=#85B2FE gui=NONE  ctermfg=111 cterm=underline 

" hi pythonArithmetic guifg=#00BB6F gui=NONE  ctermfg=35 cterm=underline 
" hi pythonAssignment guifg=#00BB6F gui=NONE  ctermfg=35 cterm=underline 
" hi pythonAsync guifg=SpringGreen3 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonBinError guifg=Tomato guibg=#1B5958 gui=NONE  ctermfg=0 ctermbg=23 cterm=underline 
" hi pythonBinNumber guifg=#0F9944 gui=NONE  ctermfg=29 cterm=underline 
" hi pythonBoolean guifg=#8870FF gui=NONE  ctermfg=99 cterm=underline 
" hi pythonBrackets guifg=#2DB3A0 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonBuiltin guifg=MediumTurquoise gui=NONE  ctermfg=0 cterm=underline 
" hi pythonBuiltinFunc guifg=RoyalBlue1 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonBuiltinLogic guifg=#729FCF gui=NONE  ctermfg=74 cterm=underline 
" hi pythonBuiltinObj guifg=DeepSkyBlue2 gui=NONE  ctermfg=160 cterm=underline 
" hi pythonBuiltinType guifg=Turquoise3 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonBytes guifg=Salmon3 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonBytesContent guifg=Salmon3 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonBytesError guifg=DarkOliveGreen2 gui=underline  ctermfg=160 cterm=underline 
" hi pythonBytesEscape guifg=DarkSlateGray4 gui=NONE  ctermfg=160 cterm=underline 
" hi pythonBytesEscapeError guifg=DarkOliveGreen2 gui=NONE  ctermfg=160 cterm=underline 
" hi pythonCalOperator guifg=#af5f00 gui=NONE  ctermfg=130 cterm=underline 
" hi pythonClass guifg=DodgerBlue2 gui=NONE  ctermfg=1 cterm=underline 
" hi pythonClassDef guifg=#2FBBA6 gui=NONE  ctermfg=1 cterm=underline 
" hi pythonClassName guifg=#2FBBA6 gui=NONE  ctermfg=1 cterm=underline 
" hi pythonClassParameters guifg=#00A9D9 gui=NONE  ctermfg=1 cterm=underline 
" hi pythonCoding guifg=SlateGray3 gui=italic  ctermfg=0 cterm=italic 
" hi pythonComment guifg=#557F8F gui=NONE  ctermfg=66 cterm=underline 
" hi pythonComparison guifg=#2FCCA6 gui=NONE  ctermfg=43 cterm=underline 
" hi pythonConditional guifg=#00AAAA gui=NONE  ctermfg=37 cterm=underline 
" hi pythonDecorator guifg=#21C43B gui=NONE  ctermfg=41 cterm=underline 
" hi pythonDecoratorFunction guifg=#85B2FE gui=NONE  ctermfg=111 cterm=underline 
" hi pythonDecoratorName guifg=#8680BF gui=NONE  ctermfg=103 cterm=underline 
" hi pythonDefaultAssignment guifg=#7FC090 gui=NONE  ctermfg=108 cterm=underline 
" hi pythonDocstring guifg=#5D8B9C gui=NONE  ctermfg=67 cterm=underline 
" hi pythonDocTest guifg=#6D8C63 gui=NONE  ctermfg=65 cterm=underline 
" hi pythonDocTest2 guifg=#6D8C63 gui=NONE  ctermfg=65 cterm=underline 
" hi pythonDocTestValue guifg=#00A8AA gui=NONE  ctermfg=37 cterm=underline 
" hi pythonDot guifg=SlateGray3 gui=bold  ctermfg=0 cterm=bold 
" hi pythonDottedName guifg=#00AF6F gui=NONE  ctermfg=35 cterm=underline 
" hi pythonError guifg=DeepSkyBlue guibg=Gray30 gui=NONE  ctermfg=160 ctermbg=17 cterm=underline 
" hi pythonEscape guifg=DodgerBlue2 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonEscapeError guifg=Khaki2 guibg=VioletRed4 gui=NONE  ctermfg=0 ctermbg=16 cterm=underline 
" hi pythonException guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonExceptions guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonExClass guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonExtraOperator guifg=#85B2FE gui=NONE  ctermfg=111 cterm=underline 
" hi pythonExtraPseudoOperator guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonFloat guifg=SkyBlue2 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonFunc guifg=#A191F5 gui=NONE  ctermfg=141 cterm=underline 
" hi pythonFuncDef guifg=#85CCFE gui=NONE  ctermfg=117 cterm=underline 
" hi pythonFuncName guifg=#85B2FE gui=NONE  ctermfg=111 cterm=underline 
" hi pythonFuncParams guifg=Red gui=NONE  ctermfg=Red cterm=underline 
" hi pythonFunction guifg=DeepSkyBlue2 gui=NONE  ctermfg=160 cterm=underline 
" hi pythonHexError guifg=Tomato guibg=#1B5958 gui=NONE  ctermfg=0 ctermbg=23 cterm=underline 
" hi pythonHexNumber guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonImport guifg=DeepSkyBlue3 gui=NONE  ctermfg=160 cterm=underline 
" hi pythonInclude guifg=#009F6F gui=NONE  ctermfg=35 cterm=underline 
" hi pythonIndentError guifg=DarkSlateGray guibg=#0C2628 gui=underline  ctermfg=160 ctermbg=0 cterm=underline 
" hi pythonLambdaError guifg=Khaki2 guibg=VioletRed4 gui=NONE  ctermfg=0 ctermbg=16 cterm=underline 
" hi pythonLambdaExpr guifg=#66AC66 gui=NONE  ctermfg=71 cterm=underline 
" hi pythonNumber guifg=#85B2FE gui=NONE  ctermfg=111 cterm=underline 
" hi pythonNumberError guifg=#CC4455 gui=NONE  ctermfg=167 cterm=underline 
" hi pythonObjFunction guifg=#009F6F gui=NONE  ctermfg=35 cterm=underline 
" hi pythonOctError guifg=Tomato guibg=#1B5958 gui=NONE  ctermfg=0 ctermbg=23 cterm=underline 
" hi pythonOctNumber guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonOperator guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonParam guifg=RoyalBlue1 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonParamDefault guifg=SeaGreen3 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonParameters guifg=#00A9D9 gui=NONE  ctermfg=38 cterm=underline 
" hi pythonParamName guifg=#C59F6F gui=NONE  ctermfg=179 cterm=underline 
" hi pythonPreCondit guifg=#00B780 gui=NONE  ctermfg=36 cterm=underline 
" hi pythonQuotes guifg=#54AABF gui=NONE  ctermfg=73 cterm=underline 
" hi pythonRawBytes guifg=LightSkyBlue3 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonRawString guifg=#7FA2E6 gui=NONE  ctermfg=110 cterm=underline 
" hi pythonRepeat guifg=#00AF6F gui=underline  ctermfg=35 cterm=underline 
" hi pythonRun guifg=SlateGray3 gui=italic  ctermfg=0 cterm=italic 
" hi pythonSelf guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonSpaceError guifg=LemonChiffon2 guibg=#442926 gui=NONE  ctermfg=0 ctermbg=52 cterm=underline 
" hi pythonStatement guifg=#2FBBA6 gui=NONE  ctermfg=37 cterm=underline 
" hi pythonStrFormat guifg=#8870FF gui=NONE  ctermfg=99 cterm=underline 
" hi pythonStrFormatting guifg=RoyalBlue2 gui=NONE  ctermfg=0 cterm=underline 
" hi pythonString guifg=#54A3BF gui=NONE  ctermfg=73 cterm=underline 
" hi pythonStrTemplate guifg=PowderBlue guibg=#264040 gui=italic  ctermfg=0 ctermbg=23 cterm=italic 
" hi pythonSuperclass guifg=#99AD6A gui=NONE  ctermfg=107 cterm=underline 
" hi pythonSync guifg=IndianRed gui=italic  ctermfg=0 cterm=italic 
" hi PythonTodo guifg=MediumSeaGreen gui=NONE  ctermfg=0 cterm=underline 
" hi pythonTripleQuotes guifg=#CC4455 gui=NONE  ctermfg=167 cterm=underline 
" hi pythonUniEscape guifg=#CC4455 gui=NONE  ctermfg=167 cterm=underline 
" hi pythonUniEscapeError guifg=Khaki2 guibg=VioletRed4 gui=NONE  ctermfg=0 ctermbg=16 cterm=underline 
" hi pythonUniRawEscape guifg=#CC4455 gui=NONE  ctermfg=167 cterm=underline 
" hi pythonUniRawEscapeError guifg=Khaki2 guibg=VioletRed4 gui=NONE  ctermfg=0 ctermbg=16 cterm=underline 
" hi pythonUniRawString guifg=#7FA2E6 gui=NONE  ctermfg=110 cterm=underline 
" hi pythonUniString guifg=SlateBlue3 gui=NONE  ctermfg=20 cterm=underline 

" highlight myC0 ctermfg=50 cterm=bold
highlight myC0 ctermfg=41 cterm=bold
" highlight myC0 ctermfg=39 cterm=bold
" highlight myC0 ctermfg=208 cterm=bold
highlight myC1 ctermfg=119
highlight myC2 ctermfg=208
2match myC0 /\v[a-zA-Z][a-zA-Z0-9\_]*\./
" 2match myC1 /\v\.[a-z\_]+\./
" 3match myC1 /\v[a-zA-Z][a-zA-Z0-9\_]+\?\=\(/
