lint:
	stylua .

build:
	nvim --headless -u minimal.vim -c 'lua require("doubletrouble.build").all()' -c 'q'

pr-ready: lint build
