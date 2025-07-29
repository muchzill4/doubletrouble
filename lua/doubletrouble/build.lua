local colors = require "doubletrouble.colors"

local function write_file(path, text)
  local file = io.open(path, "w+")
  file:write(text)
  file:close()
end

local function render(template, colors)
  return string.gsub(template, "%$([%l_]+)", function(s)
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

mark1_background $purple
mark2_background $cyan
mark3_background $blue

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
set fish_color_cwd $blue
set fish_color_error $red
set fish_color_param $brown
set fish_color_quote $cyan
set fish_color_search_match $bg --background=$yellow
set fish_color_operator $white
set fish_color_end $white
set fish_color_redirection $white --bold
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

function M.fzf()
  local theme = {
    "query:regular",
    "hl:$yellow",
    "hl+:bold:$yellow",
    "prompt:$purple",
    "bg+:$bg_purple",
    "gutter:-1", -- -1 is background in fzf lingo
    "info:$black",
    "separator:$bg_black",
    "scrollbar:$black",
    "border:$black",
  }
  local template = "--color " .. table.concat(theme, ",")
  write_file("dist/fzf/fzf.txt", render(template, colors))
end

function M.ghostty()
  local template = [[
cursor-color = $green
cursor-text = #000000

foreground = $fg
background = $bg

palette = 0=$black
palette = 1=$red
palette = 2=$green
palette = 3=$yellow
palette = 4=$blue
palette = 5=$purple
palette = 6=$cyan
palette = 7=$white
palette = 8=$black
palette = 9=$red
palette = 10=$green
palette = 11=$yellow
palette = 12=$blue
palette = 13=$purple
palette = 14=$cyan
palette = 15=$white
]]

  write_file("dist/ghostty/doubletrouble", render(template, colors))
end

function M.tmux()
  local template = [[
set -g mode-style fg='$bg',bg='$fg'
set -g message-style fg='$bg',bg='$yellow'
set -g copy-mode-match-style fg='$bg',bg='$bg_yellow'
set -g copy-mode-current-match-style fg='$bg',bg='$yellow'
set -g copy-mode-mark-style fg='$bg',bg='$red'
set -g menu-selected-style fg='$bg',bg='$yellow'
set -g status-style bg='$bg_black',fg='$fg'
set -g pane-active-border-style fg='$black'
set -g pane-border-style fg='$bg_black'
set -g window-status-current-style bg='$bg_white'
set -g window-status-activity-style bg='#{window-status-style}'
]]

  write_file("dist/tmux/doubletrouble.conf", render(template, colors))
end

function M.all()
  M.vim()
  M.kitty()
  M.fish()
  M.blink()
  M.slack()
  M.fzf()
  M.ghostty()
  M.tmux()
end

return M
