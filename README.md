# doubletrouble vim colorscheme

![doubletrouble](../assets/nvim.png)

## install

```text
use { "muchzill4/doubletrouble" }
```

## use

```lua
vim.o.termguicolors = true
vim.cmd "colorscheme doubletrouble"
```

Retrieve colors with:

```lua
local colors = require("doubletrouble.colors")
```

## supports

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)

## extras

- [kitty](dist/kitty/doubletrouble.conf)
- [fish](dist/fish/doubletrouble.fish)
- [blink](dist/blink/blink.js)
- [slack](dist/slack/slack.txt)
- [fzf](dist/fzf/fzf.txt)
