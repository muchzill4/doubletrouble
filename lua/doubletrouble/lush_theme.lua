--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require "lush"
local c = require "doubletrouble.colors"

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn { bg = c.bg_black.da(15) }, -- Columns set with 'colorcolumn'
    Conceal { fg = c.black }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { ColorColumn }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { ColorColumn }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory { fg = c.blue }, -- Directory names (and other special names in listings)
    DiffAdd { bg = c.bg_green }, -- Diff mode: Added line |diff.txt|
    DiffChange { bg = c.bg_brown }, -- Diff mode: Changed line |diff.txt|
    DiffDelete { bg = c.bg_red }, -- Diff mode: Deleted line |diff.txt|
    DiffText { bg = c.bg_brown }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { fg = c.bg_white }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg { fg = c.bg, bg = c.red }, -- Error messages on the command line
    VertSplit { EndOfBuffer }, -- Column separating vertically split windows
    Folded { fg = c.black }, -- Line used for closed folds
    FoldColumn { Folded }, -- 'foldcolumn'
    SignColumn {}, -- Column where |signs| are displayed
    IncSearch { fg = c.bg, bg = c.yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr { Folded }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = c.green }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen { fg = c.green, bg = c.black, gui = "bold" }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = c.bg, bg = c.purple, gui = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea {}, -- Area for messages and cmdline
    MsgSeparator {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = c.green }, -- |more-prompt|
    NonText { EndOfBuffer }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { bg = c.bg, fg = c.fg }, -- Normal text
    NormalFloat { bg = c.bg_black }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu { NormalFloat }, -- Popup menu: Normal item.
    PmenuSel { bg = c.bg_purple, gui = "bold" }, -- Popup menu: Selected item.
    PmenuSbar {}, -- Popup menu: Scrollbar.
    PmenuThumb { bg = c.bg_white }, -- Popup menu: Thumb of the scrollbar.
    Question { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { bg = c.bg_yellow }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad { fg = c.red, gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap { fg = c.blue, gui = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal { fg = c.yellow, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare { fg = c.cyan, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine { bg = c.bg_white, gui = "bold" }, -- Status line of current window
    StatusLineNC { Pmenu }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { StatusLineNC }, -- Tab pages line, not active tab page label
    TabLineFill { TabLine }, -- Tab pages line, where there are no labels
    TabLineSel { StatusLine }, -- Tab pages line, active tab page label
    Title { fg = c.white, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual { bg = c.bg_purple, gui = "bold" }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg { ErrorMsg }, -- Warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { PmenuSel }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment { fg = c.blue, gui = "italic" }, -- Any comment

    Constant { fg = c.green }, -- (*) Any constant
    String { fg = c.cyan }, --   A string constant: "this is a string"
    Character { String, gui = "italic" }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier { fg = c.brown }, -- (*) Any variable name
    Function { fg = c.yellow }, --   Function name (also: methods for classes)

    Statement { fg = c.white }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc { fg = c.white }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type { fg = c.purple }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special { fg = c.white }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error { bg = c.red }, -- Any erroneous construct
    Todo { Comment, gui = "bold" }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText { bg = c.bg_white.da(10) }, -- Used for highlighting "text" references
    LspReferenceRead { bg = c.bg_white.da(10) }, -- Used for highlighting "read" references
    LspReferenceWrite { bg = c.bg_white.da(10) }, -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { fg = c.red }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { fg = c.yellow }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo { fg = c.white }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint { fg = c.blue }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError { gui = "undercurl", sp = c.red }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn { gui = "undercurl", sp = c.yellow }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo { gui = "undercurl", sp = c.white }, -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint { gui = "undercurl", sp = c.blue }, -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    sym "@constant.builtin" { Constant, gui = "italic" }, -- Special
    sym "@constant.macro" { Constant }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    sym "@function.builtin" { Function, gui = "italic" }, -- Special
    sym "@function.macro" { Function }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    sym "@variable" { Normal }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag

    -- highlights in "git commit -v"
    diffAdded { DiffAdd },
    diffChanged { DiffChange },
    diffRemoved { DiffDelete },

    -- nvim-telescope/telescope.nvim
    TelescopeMatching { Function },
    TelescopeCounter { LineNr },

    -- lewis6991/gitsigns.nvim
    GitSignsAdd { fg = c.bg_green.li(10) },
    GitSignsChange { fg = c.bg_yellow.li(10) },
    GitSignsDelete { fg = c.bg_red.li(15) },

    -- hrsh7th/nvim-cmp
    CmpItemAbbr { fg = c.fg },
    CmpItemAbbrDeprecated { fg = c.blue },
    CmpItemAbbrMatch { Function },
    CmpItemAbbrMatchFuzzy { Function },
    CmpItemKind { fg = c.white },

    -- nvim-treesitter/nvim-treesitter-context
    TreesitterContextLineNumber { Identifier },
    TreesitterContext { bg = c.bg_black.da(5) },
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
