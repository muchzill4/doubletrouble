hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="doubletrouble"
set background=dark
highlight Normal guifg=#CDCFE4 guibg=#191929 guisp=NONE blend=NONE gui=NONE
highlight! link FzfLuaHeaderText Normal
highlight Added guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Changed guifg=#BB781B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Character guifg=#D1AF9F guibg=NONE guisp=NONE blend=NONE gui=italic
highlight ColorColumn guifg=NONE guibg=#212236 guisp=NONE blend=NONE gui=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight Comment guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conceal guifg=#565B8F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Constant guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#E25A6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#9C9FC9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#E25A6A blend=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#6CA9EF blend=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#9C9FC9 blend=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#E6A64C blend=NONE gui=undercurl
highlight DiagnosticWarn guifg=#E6A64C guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#1C3129 guisp=NONE blend=NONE gui=NONE
highlight DiffChange guifg=NONE guibg=#3F2C17 guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#E25A6A guibg=#471A26 guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=NONE guibg=#6C4B28 guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight EndOfBuffer guifg=#393D6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link VertSplit EndOfBuffer
highlight! link WinSeparator EndOfBuffer
highlight Error guifg=NONE guibg=#E25A6A guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#191929 guibg=#E25A6A guisp=NONE blend=NONE gui=NONE
highlight! link WarningMsg ErrorMsg
highlight FloatBorder guifg=#565B8F guibg=#191929 guisp=NONE blend=NONE gui=NONE
highlight Folded guifg=#565B8F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link FoldColumn Folded
highlight! link LineNr Folded
highlight Function guifg=#E6A64C guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FzfLuaBorder guifg=#565B8F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FzfLuaBufFlagCur guifg=#565B8F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link FzfLuaBufFlagAlt FzfLuaBufFlagCur
highlight FzfLuaBufName guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FzfLuaCursor guifg=#191929 guibg=#E6A64C guisp=NONE blend=NONE gui=bold
highlight FzfLuaHeaderBind guifg=#D1AF9F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link FzfLuaBufNr FzfLuaHeaderBind
highlight! link FzfLuaTabMarker FzfLuaHeaderBind
highlight GitSignsAdd guifg=#4C8571 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight GitSignsChange guifg=#A8753E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight GitSignsDelete guifg=#B0405E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#BB781B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link TreesitterContextLineNumber Identifier
highlight IncSearch guifg=#191929 guibg=#E6A64C guisp=NONE blend=NONE gui=NONE
highlight! link CurSearch IncSearch
highlight! link FzfLuaBufLineNr LineNr
highlight LspReferenceRead guifg=NONE guibg=#343760 guisp=NONE blend=NONE gui=NONE
highlight LspReferenceText guifg=NONE guibg=#343760 guisp=NONE blend=NONE gui=NONE
highlight LspReferenceWrite guifg=NONE guibg=#343760 guisp=NONE blend=NONE gui=NONE
highlight MatchParen guifg=#7FC79B guibg=#565B8F guisp=NONE blend=NONE gui=bold
highlight ModeMsg guifg=#191929 guibg=#E0A8E1 guisp=NONE blend=NONE gui=bold
highlight MoreMsg guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link Question MoreMsg
highlight MsgArea guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MsgSeparator guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#454973 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#191929 guisp=NONE blend=NONE gui=NONE
highlight Pmenu guifg=NONE guibg=#262840 guisp=NONE blend=NONE gui=NONE
highlight! link StatusLineNC Pmenu
highlight PmenuSbar guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#561E57 guisp=NONE blend=NONE gui=bold
highlight! link WildMenu PmenuSel
highlight PmenuThumb guifg=NONE guibg=#393D6A guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#9C9FC9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight QuickFixLine guifg=NONE guibg=#4E361D guisp=NONE blend=NONE gui=NONE
highlight Removed guifg=#E25A6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=NONE guibg=#4E361D guisp=NONE blend=NONE gui=NONE
highlight! link FzfLuaCursorLine Search
highlight SignColumn guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#9C9FC9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#E25A6A guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight SpellCap guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight SpellLocal guifg=#E6A64C guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight SpellRare guifg=#D1AF9F guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight Statement guifg=#9C9FC9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=NONE guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight! link TabLineSel StatusLine
highlight! link TabLine StatusLineNC
highlight String guifg=#D1AF9F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link TabLineFill TabLine
highlight Title guifg=#9C9FC9 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link FzfLuaTabTitle Title
highlight! link FzfLuaTitle Title
highlight Todo guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=bold,italic
highlight TreesitterContext guifg=NONE guibg=#24263D guisp=NONE blend=NONE gui=NONE
highlight Type guifg=#E0A8E1 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight User1 guifg=#E25A6A guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight User2 guifg=#7FC79B guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight User3 guifg=#E6A64C guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight User4 guifg=#6CA9EF guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight User5 guifg=#E0A8E1 guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight User6 guifg=#D1AF9F guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight User7 guifg=#9C9FC9 guibg=#393D6A guisp=NONE blend=NONE gui=bold
highlight Visual guifg=NONE guibg=#561E57 guisp=NONE blend=NONE gui=NONE