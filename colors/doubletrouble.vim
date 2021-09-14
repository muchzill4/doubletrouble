hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="doubletrouble"
set background=dark
highlight Character guifg=#D1AF9F guibg=NONE guisp=NONE gui=italic blend=NONE
highlight ColorColumn guifg=NONE guibg=#212236 guisp=NONE gui=NONE blend=NONE
highlight Comment guifg=#6CA9EF guibg=NONE guisp=NONE gui=italic blend=NONE
highlight Conceal guifg=#565B8F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Constant guifg=#7FC79B guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight CursorLineNr guifg=#7FC79B guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight DiffAdd guifg=#7FC79B guibg=#102317 guisp=NONE gui=NONE blend=NONE
highlight DiffChange guifg=#E6A64C guibg=#50340B guisp=NONE gui=NONE blend=NONE
highlight DiffDelete guifg=#E25A6A guibg=#450C13 guisp=NONE gui=NONE blend=NONE
highlight DiffText guifg=#BB781B guibg=#50340B guisp=NONE gui=NONE blend=NONE
highlight Directory guifg=#6CA9EF guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight EndOfBuffer guifg=#565B8F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Error guifg=NONE guibg=#E25A6A guisp=NONE gui=NONE blend=NONE
highlight ErrorMsg guifg=#1D1D30 guibg=#E25A6A guisp=NONE gui=NONE blend=NONE
highlight Function guifg=#E6A64C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Identifier guifg=#BB781B guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight IncSearch guifg=#1D1D30 guibg=#E6A64C guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultError guifg=#E25A6A guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultHint guifg=#6CA9EF guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultInformation guifg=#ACAFD2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsDefaultWarning guifg=#E6A64C guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight LspDiagnosticsUnderlineError guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight MatchParen guifg=#7FC79B guibg=#565B8F guisp=NONE gui=bold blend=NONE
highlight ModeMsg guifg=#1D1D30 guibg=#E0A8E1 guisp=NONE gui=NONE blend=NONE
highlight MoreMsg guifg=#7FC79B guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Normal guifg=#CDCFE4 guibg=#1D1D30 guisp=NONE gui=NONE blend=NONE
highlight NormalFloat guifg=NONE guibg=#262840 guisp=NONE gui=NONE blend=NONE
highlight PmenuSbar guifg=NONE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight PmenuSel guifg=NONE guibg=#363963 guisp=NONE gui=NONE blend=NONE
highlight PreProc guifg=#ACAFD2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Search guifg=NONE guibg=#50340B guisp=NONE gui=NONE blend=NONE
highlight SignColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Special guifg=#ACAFD2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight SpellBad guifg=#E25A6A guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellCap guifg=#6CA9EF guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellLocal guifg=#E6A64C guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight SpellRare guifg=#D1AF9F guibg=NONE guisp=NONE gui=undercurl blend=NONE
highlight Statement guifg=#ACAFD2 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight String guifg=#D1AF9F guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight TSConstBuiltin guifg=#7FC79B guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TSFuncBuiltin guifg=#E6A64C guibg=NONE guisp=NONE gui=italic blend=NONE
highlight TabLineFill guifg=NONE guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Title guifg=NONE guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Todo guifg=#6CA9EF guibg=NONE guisp=NONE gui=bold blend=NONE
highlight Type guifg=#E0A8E1 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline blend=NONE
highlight VertSplit guifg=#363963 guibg=NONE guisp=NONE gui=NONE blend=NONE
highlight Visual guifg=NONE guibg=#561E57 guisp=NONE gui=NONE blend=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight! link FoldColumn EndOfBuffer
highlight! link Folded EndOfBuffer
highlight! link LineNr EndOfBuffer
highlight! link LspReferenceRead PmenuSel
highlight! link LspReferenceText PmenuSel
highlight! link LspReferenceWrite PmenuSel
highlight! link NonText EndOfBuffer
highlight! link Pmenu NormalFloat
highlight! link PmenuThumb PmenuSel
highlight! link Question MoreMsg
highlight! link StatusLine PmenuSel
highlight! link StatusLineNC Pmenu
highlight! link TSConstMacro Constant
highlight! link TSFuncMacro Function
highlight! link TabLine StatusLineNC
highlight! link TabLineSel StatusLine
highlight! link WarningMsg ErrorMsg
highlight! link WildMenu PmenuSel
highlight! link diffAdded DiffAdd
highlight! link diffChanged DiffChange
highlight! link diffRemoved DiffDelete