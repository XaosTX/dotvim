" Many terminals can only use six different colors (plus black and white).
" Therefore the number of colors used is kept low. It doesn't look nice with
" too many colors anyway.
" Careful with "cterm=bold", it may change the color to bright.
" There are two sets of defaults: for a dark and a light background.
if &background == "dark"
" cheap shortcuts
   hi       Blue1       ctermfg=DarkBlue guifg=#3333ff
   hi       Cyan1       ctermfg=DarkCyan guifg=#009999
   hi       Green1      ctermfg=DarkGreen guifg=#009900
   hi       Grey2       ctermfg=DarkGrey guifg=#666666
   hi       Magenta1    ctermfg=DarkMagenta guifg=#990099
   hi       Red1        ctermfg=DarkRed guifg=#990000
   hi       Yellow1     ctermfg=Brown guifg=#996600
" main default groups
  hi        Normal      guifg=LightGrey
  hi  clear Comment
  hi! link   Comment     Grey2
  hi  clear Constant
  hi! link   Constant    Cyan1
  hi  clear PreProc
  hi! link   PreProc     Red
  hi  clear Identifier
  hi! link   Identifier  Blue1
  hi  clear Statement
  hi! link   Statement   Magenta1
  hi  clear Type
  hi! link   Type        Blue1
  hi clear  Special
  hi! link   Special     Green1
  hi        Ignore      ctermfg=black guifg=bg
" other common groups
  hi ErrorMsg  cterm=NONE ctermfg=White ctermbg=DarkRed gui=NONE guifg=fg guibg=#990000
  hi ModeMsg   term=NONE cterm=NONE gui=NONE
  hi MoreMsg   cterm=NONE ctermfg=White ctermbg=DarkBlue gui=NONE guifg=fg guibg=#000099
  hi NonText   cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=#990000 guibg=NONE
  hi Question  cterm=NONE gui=NONE
  hi StatusLine cterm=NONE ctermfg=White ctermbg=DarkBlue gui=NONE guifg=fg guibg=#000099
  hi StatusLineNC cterm=NONE ctermfg=Black ctermbg=Grey gui=NONE guifg=#000000 guibg=#888888
  hi Search ctermbg=White ctermfg=DarkGrey guifg=fg guibg=#888888
  hi Visual guifg=NONE guibg=NONE
" html groups
  hi        htmlLink    term=underline cterm=underline ctermfg=DarkRed gui=underline guifg=#990000
  hi        Title       term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
  hi! link   htmlHead    Green1
  hi! link   htmlArg     Blue1  
  hi! link   htmlTag     htmlArg
  hi! link   htmlEndTag  htmlArg
  hi! link   htmlTagName Magenta1
  hi! link   htmlSpecialTagName TagName
  hi! link   htmlValue   Cyan1
  hi! link   htmlSpecial Green1
  hi! link   htmlSpecialChar Green1
  hi! link   htmlPreStmt Red1
  hi! link   htmlPreProc Red1
  hi! link   htmlPreAttr Cyan1
  hi! link   htmlPreProcAttrName Red1
  hi! link   htmlString  Cyan1
  hi! link   htmlStatement Magenta1
  hi! link   htmlComment Grey2
  hi! link   htmlCommentPart Grey2
  hi! link   javaScript  Yellow
  hi! link   htmlCssStyleComment Grey2
  hi! link   htmlCssDefinition Green1
" mail groups
  hi! link   mailHeader  Grey2
  hi! link   mailHeaderSpecial Blue1
  hi! link   mailTo      Cyan1
  hi! link   mailFrom    Yellow1
  hi! link   mailDate    Magenta1
  hi! link   mailSubject Green1
  hi! link   mailReference Red1
  hi! link   mailEmail   Magenta1
  hi! link   mailURL     Magenta1
  hi! link   mailQuoted1 Green1
  hi! link   mailQuoted2 Yellow1
  hi! link   mailQuoted3 mailQuoted1
  hi! link   mailQuoted4 mailQuoted2
  hi! link   mailQuoted5 mailQuoted1
  hi! link   mailQuoted6 mailQuoted2
  hi! link   mailSignature Red1
else
  hi Comment    term=bold ctermfg=DarkBlue guifg=Blue
  hi Constant   term=underline ctermfg=DarkRed guifg=Magenta
  hi Special    term=bold ctermfg=DarkMagenta guifg=SlateBlue
  hi Identifier term=underline ctermfg=DarkCyan guifg=DarkCyan
  hi Statement  term=bold ctermfg=Brown gui=bold guifg=Brown
  hi PreProc    term=underline ctermfg=DarkMagenta guifg=Purple
  hi Type   term=underline ctermfg=DarkGreen guifg=SeaGreen gui=bold
  hi Ignore ctermfg=white guifg=bg
endif
hi Error term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo  term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
"if &background == "dark"
"  hi Comment  term=bold ctermfg=Cyan guifg=#80a0ff
"  hi Constant term=underline ctermfg=Magenta guifg=#ffa0a0
"  hi Special  term=bold ctermfg=LightRed guifg=Orange
"  hi Identifier term=underline cterm=bold ctermfg=Cyan guifg=#40ffff
"  hi Statement    term=bold ctermfg=Yellow guifg=#ffff60 gui=bold
"  hi PreProc  term=underline ctermfg=LightBlue guifg=#ff80ff
"  hi Type term=underline ctermfg=LightGreen guifg=#60ff60 gui=bold
"  hi Ignore   ctermfg=black guifg=bg
"else
"  hi Comment  term=bold ctermfg=DarkBlue guifg=Blue
"  hi Constant term=underline ctermfg=DarkRed guifg=Magenta
"  hi Special  term=bold ctermfg=DarkMagenta guifg=SlateBlue
"  hi Identifier term=underline ctermfg=DarkCyan guifg=DarkCyan
"  hi Statement    term=bold ctermfg=Brown gui=bold guifg=Brown
"  hi PreProc  term=underline ctermfg=DarkMagenta guifg=Purple
"  hi Type term=underline ctermfg=DarkGreen guifg=SeaGreen gui=bold
"  hi Ignore   ctermfg=white guifg=bg
"endif
"hi Error term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
"hi Todo    term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

