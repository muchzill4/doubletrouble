local lush = require("lush")
local colors = require("doubletrouble.colors")

local function write_file(path, text)
  local file = io.open(path, "w+")
  file:write(text)
  file:close()
end

local function render(template, colors)
  return string.gsub(template, "%$([%w_]+)", function(s)
    return colors[s].hex
  end)
end

local M = {}

function M.vim()
  local preamble = [[
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="doubletrouble"
set background=dark
]]

  local theme = lush.compile(require("doubletrouble.lush_theme"))
  table.sort(theme)
  local vim_highlights = table.concat(theme, "\n")

  write_file("colors/doubletrouble.vim", preamble .. vim_highlights)
end

function M.kitty()
  local template = [[
cursor $green
cursor_text_color $bg

active_border_color $bg_white
inactive_border_color $bg_black

active_tab_foreground $fg
active_tab_background $bg_white
active_tab_font_style normal
inactive_tab_foreground $fg
inactive_tab_background $bg_black

foreground $fg
background $bg

color0 $black
color8 $black

color1 $red
color9 $red

color2  $green
color10 $green

color3  $yellow
color11 $yellow

color4  $blue
color12 $blue

color5  $purple
color13 $purple

color6  $cyan
color14 $cyan

color7  $white
color15 $white
]]

  write_file("dist/kitty/doubletrouble.conf", render(template, colors))
end

function M.all()
  M.vim()
  M.kitty()
end

return M
