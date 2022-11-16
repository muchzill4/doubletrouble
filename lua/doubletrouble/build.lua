local lush = require "lush"
local colors = require "doubletrouble.colors"

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
  local lushwright = require "shipwright.transform.lush"
  local theme = require "doubletrouble.lush_theme"
  local vimscript = table.concat(lushwright.to_vimscript(theme), "\n")

  write_file("colors/doubletrouble.vim", preamble .. vimscript)
end

function M.kitty()
  local template = [[
cursor $green
cursor_text_color $bg

active_border_color $bg_white
inactive_border_color $bg_black

active_tab_foreground $fg
active_tab_background $bg_white
active_tab_font_style bold
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

function M.fish()
  local template = [[
set fish_color_command $green
set fish_color_error $red
set fish_color_normal $fg
set fish_color_operator $white
set fish_color_param normal
set fish_color_quote $cyan
set fish_color_search_match --background=$bg_yellow
set fish_color_valid_path normal --underline
]]

  write_file(
    "dist/fish/doubletrouble.fish",
    string.gsub(render(template, colors), "#", "")
  )
end

function M.blink()
  local template = [[
t.prefs_.set('color-palette-overrides', [
  '$black', '$red', '$green', '$yellow', '$blue', '$purple', '$cyan', '$white',
  '$black', '$red', '$green', '$yellow', '$blue', '$purple', '$cyan', '$white',
]);

cursor = '$green'

t.prefs_.set('cursor-color', cursor + '80');
t.prefs_.set('foreground-color', '$fg');
t.prefs_.set('background-color', '$bg');
]]

  write_file("dist/blink/blink.js", render(template, colors))
end

function M.slack()
  -- no idea what second color is for, so making it obnoxious red,
  -- let's see if it pops up
  local template = [[
$bg,#ff0000,$bg_white,$fg,$bg_black,$fg,$green,$red,$bg,$fg
]]

  write_file("dist/slack/slack.txt", render(template, colors))
end

function M.all()
  M.vim()
  M.kitty()
  M.fish()
  M.blink()
  M.slack()
end

return M
