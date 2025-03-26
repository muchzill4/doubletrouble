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

- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua)

## extras

- [kitty](dist/kitty/doubletrouble.conf)
- [fish](dist/fish/doubletrouble.fish)
- [blink](dist/blink/blink.js)
- [slack](dist/slack/slack.txt)
- [fzf](dist/fzf/fzf.txt)
- [ghostty](dist/ghostty/doubletrouble)
- [tmux](dist/tmux/doubletrouble.conf)
