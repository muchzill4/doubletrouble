# doubletrouble vim colorscheme

![doubletrouble](../assets/nvim.png)

## install

```text
"muchzill4/doubletrouble"
```

## use

```lua
vim.o.termguicolors = true
vim.api.nvim_command "colorscheme doubletrouble"
```

Retrieve colors with:

```lua
local colors = require("doubletrouble.colors")
```

## extras

- [kitty](dist/kitty/doubletrouble.conf)
- [fish](dist/fish/doubletrouble.fish)
- [blink](dist/blink/blink.js)
- [slack](dist/slack/slack.txt)
