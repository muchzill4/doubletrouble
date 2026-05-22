local lush = require "lush"
local hsl = lush.hsl

local c = {
  bg = hsl(240, 25, 13),
  fg = hsl(235, 20, 75),
  black = hsl(235, 25, 40),
  red = hsl(353, 70, 62),
  green = hsl(143, 39, 64),
  yellow = hsl(35, 75, 60),
  blue = hsl(212, 70, 68),
  purple = hsl(299, 49, 77),
  dune = hsl(20, 35, 72),
  white = hsl(235, 30, 70),
}

c.brown = c.yellow.da(30)

c.bg_black = hsl(235, 25, 20)
c.bg_white = hsl(235, 30, 30)
c.bg_red = hsl(353, 40, 22)
c.bg_green = hsl(143, 25, 22)
c.bg_yellow = hsl(35, 35, 22)
c.bg_brown = hsl(35, 30, 18)
c.bg_purple = hsl(299, 40, 22)

return c
