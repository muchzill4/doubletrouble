local lush = require "lush"
local c = require "doubletrouble.colors"

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment { fg = c.blue, gui = "italic" }, -- any comment
    ColorColumn { bg = c.bg_black.da(15) }, -- used for the columns set with 'colorcolumn'
    Conceal { fg = c.black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    CursorColumn { ColorColumn }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { ColorColumn }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd { bg = c.bg_green }, -- diff mode: Added line |diff.txt|
    DiffChange { bg = c.bg_yellow }, -- diff mode: Changed line |diff.txt|
    DiffDelete { bg = c.bg_red }, -- diff mode: Deleted line |diff.txt|
    DiffText { bg = c.bg_brown }, -- diff mode: Changed text within a changed line |diff.txt|
    diffAdded { DiffAdd },
    diffChanged { DiffChange },
    diffRemoved { DiffDelete },
    EndOfBuffer { fg = c.bg_white }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg { fg = c.bg, bg = c.red }, -- error messages on the command line
    VertSplit { EndOfBuffer }, -- the column separating vertically split windows
    Folded { fg = c.black }, -- line used for closed folds
    FoldColumn { Folded }, -- 'foldcolumn'
    SignColumn {}, -- column where |signs| are displayed
    IncSearch { fg = c.bg, bg = c.yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    LineNr { Folded }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = c.green }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen { fg = c.green, bg = c.black, gui = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = c.bg, bg = c.purple }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = c.green }, -- |more-prompt|
    NonText { EndOfBuffer }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { bg = c.bg, fg = c.fg }, -- normal text
    NormalFloat { bg = c.bg_black }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu { NormalFloat }, -- Popup menu: normal item.
    PmenuSel { bg = c.bg_purple }, -- Popup menu: selected item.
    PmenuSbar {}, -- Popup menu: scrollbar.
    PmenuThumb { bg = c.bg_white }, -- Popup menu: Thumb of the scrollbar.
    Question { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { bg = c.bg_yellow }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad { fg = c.red, gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap { fg = c.blue, gui = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal { fg = c.yellow, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare { fg = c.cyan, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine { bg = c.bg_white }, -- status line of current window
    StatusLineNC { Pmenu }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { StatusLineNC }, -- tab pages line, not active tab page label
    TabLineFill { TabLine }, -- tab pages line, where there are no labels
    TabLineSel { StatusLine }, -- tab pages line, active tab page label
    Title { fg = c.white, gui = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual { bg = c.bg_purple }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg { ErrorMsg }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu { PmenuSel }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant { fg = c.green }, -- (preferred) any constant
    String { fg = c.cyan }, --   a string constant: "this is a string"
    Character { String, gui = "italic" }, --  a character constant: 'c', '\n'
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    Identifier { fg = c.brown }, -- (preferred) any variable name
    Function { fg = c.yellow }, -- function name (also: methods for classes)

    Statement { fg = c.white }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc { fg = c.white }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type { fg = c.purple }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special { fg = c.white }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { fg = yellow.da(30) }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error { bg = c.red }, -- (preferred) any erroneous construct

    Todo { Comment, gui = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText { bg = c.bg_white.da(10) }, -- used for highlighting "text" references
    LspReferenceRead { bg = c.bg_white.da(10) }, -- used for highlighting "read" references
    LspReferenceWrite { bg = c.bg_white.da(10) }, -- used for highlighting "write" references

    DiagnosticError { fg = c.red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { fg = c.yellow }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticInfo { fg = c.white }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticHint { fg = c.blue }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- DiagnosticVirtualTextError          { }, -- Used for "Error" diagnostic virtual text
    -- DiagnosticVirtualTextWarn           { }, -- Used for "Warning" diagnostic virtual text
    -- DiagnosticVirtualTextInfo           { }, -- Used for "Information" diagnostic virtual text
    -- DiagnosticVirtualTextHint           { }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError { gui = "undercurl" }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn { gui = "undercurl" }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo { gui = "undercurl" }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint { gui = "undercurl" }, -- Used to underline "Hint" diagnostics

    -- DiagnosticFloatingError             { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- DiagnosticFloatingWarn              { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- DiagnosticFloatingInfo              { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- DiagnosticFloatingHint              { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- DiagnosticSignError                 { }, -- Used for "Error" signs in sign column
    -- DiagnosticSignWarn                  { }, -- Used for "Warning" signs in sign column
    -- DiagnosticSignInfo                  { }, -- Used for "Information" signs in sign column
    -- DiagnosticSignHint                  { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    sym "@constant.builtin" { Constant, gui = "italic" }, -- For constant that are built in the language: `nil` in Lua.
    sym "@constant.macro" { Constant }, -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    sym "@function.builtin" { Function, gui = "italic" }, -- For builtin functions: `table.insert` in Lua.
    sym "@function.macro" { Function }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    sym "@variable" { Normal }, -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
