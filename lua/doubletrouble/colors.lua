local lush = require "lush"
local hsl = lush.hsl

local c = {
  bg = hsl(240, 25, 15),
  fg = hsl(235, 30, 85),
  black = hsl(235, 25, 45),
  red = hsl(353, 70, 62),
  green = hsl(143, 39, 64),
  yellow = hsl(35, 75, 60),
  blue = hsl(212, 80, 68),
  purple = hsl(299, 49, 77),
  cyan = hsl(20, 35, 72),
  white = hsl(235, 30, 70),
}

c.brown = c.yellow.da(30)

c.bg_black = c.black.da(55)
c.bg_white = c.white.da(60)
c.bg_red = c.red.mix(c.bg, 30).da(60)
c.bg_green = c.green.mix(c.bg, 30).da(70)
c.bg_yellow = c.yellow.mix(c.bg, 30).da(70)
c.bg_brown = c.brown.mix(c.bg, 30).da(40)
c.bg_purple = c.purple.da(70)

return c
