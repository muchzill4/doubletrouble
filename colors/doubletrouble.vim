hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="doubletrouble"
set background=dark
highlight Normal guifg=#CDCFE4 guibg=#1D1D30 guisp=NONE blend=NONE gui=NONE
highlight! link @variable Normal
highlight Character guifg=#D1AF9F guibg=NONE guisp=NONE blend=NONE gui=italic
highlight ColorColumn guifg=NONE guibg=#212236 guisp=NONE blend=NONE gui=NONE
highlight! link CursorColumn ColorColumn
highlight! link CursorLine ColorColumn
highlight Comment guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conceal guifg=#565B8F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Constant guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link @constant.macro Constant
highlight CursorLineNr guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#E25A6A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#ACAFD2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight DiagnosticWarn guifg=#E6A64C guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=NONE guibg=#1E432C guisp=NONE blend=NONE gui=NONE
highlight! link diffAdded DiffAdd
highlight DiffChange guifg=NONE guibg=#50340B guisp=NONE blend=NONE gui=NONE
highlight! link diffChanged DiffChange
highlight DiffDelete guifg=NONE guibg=#520F16 guisp=NONE blend=NONE gui=NONE
highlight! link diffRemoved DiffDelete
highlight DiffText guifg=NONE guibg=#312007 guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight EndOfBuffer guifg=#363963 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link NonText EndOfBuffer
highlight! link VertSplit EndOfBuffer
highlight Error guifg=NONE guibg=#E25A6A guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#1D1D30 guibg=#E25A6A guisp=NONE blend=NONE gui=NONE
highlight! link WarningMsg ErrorMsg
highlight Folded guifg=#565B8F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link FoldColumn Folded
highlight! link LineNr Folded
highlight Function guifg=#E6A64C guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link TelescopeMatching Function
highlight! link @function.macro Function
highlight GitSignsAdd guifg=#2A603F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight GitSignsChange guifg=#744B11 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight GitSignsDelete guifg=#861825 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#BB781B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight IncSearch guifg=#1D1D30 guibg=#E6A64C guisp=NONE blend=NONE gui=NONE
highlight! link TelescopeCounter LineNr
highlight LspReferenceRead guifg=NONE guibg=#30345A guisp=NONE blend=NONE gui=NONE
highlight LspReferenceText guifg=NONE guibg=#30345A guisp=NONE blend=NONE gui=NONE
highlight LspReferenceWrite guifg=NONE guibg=#30345A guisp=NONE blend=NONE gui=NONE
highlight MatchParen guifg=#7FC79B guibg=#565B8F guisp=NONE blend=NONE gui=bold
highlight ModeMsg guifg=#1D1D30 guibg=#E0A8E1 guisp=NONE blend=NONE gui=bold
highlight MoreMsg guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link Question MoreMsg
highlight MsgArea guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MsgSeparator guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NormalFloat guifg=NONE guibg=#262840 guisp=NONE blend=NONE gui=NONE
highlight! link Pmenu NormalFloat
highlight! link StatusLineNC Pmenu
highlight PmenuSbar guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PmenuSel guifg=NONE guibg=#561E57 guisp=NONE blend=NONE gui=bold
highlight! link WildMenu PmenuSel
highlight PmenuThumb guifg=NONE guibg=#363963 guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#ACAFD2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=NONE guibg=#50340B guisp=NONE blend=NONE gui=NONE
highlight SignColumn guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#ACAFD2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#E25A6A guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight SpellCap guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight SpellLocal guifg=#E6A64C guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight SpellRare guifg=#D1AF9F guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight Statement guifg=#ACAFD2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=NONE guibg=#363963 guisp=NONE blend=NONE gui=bold
highlight! link TabLineSel StatusLine
highlight! link TabLine StatusLineNC
highlight String guifg=#D1AF9F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link TabLineFill TabLine
highlight Title guifg=#ACAFD2 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Todo guifg=#6CA9EF guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Type guifg=#E0A8E1 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight Visual guifg=NONE guibg=#561E57 guisp=NONE blend=NONE gui=bold
highlight @constant.builtin guifg=#7FC79B guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @function.builtin guifg=#E6A64C guibg=NONE guisp=NONE blend=NONE gui=italic