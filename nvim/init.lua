-- Surdeus init file.
-- surdeus@gmail.com

vim.opt.swapfile = false

vim.o.number = true
vim.o.cursorline = true
vim.api.nvim_cmd({
	cmd = 'colorscheme',
	args = {'jien'},
}, {})

require("indent")
require("maps")

require("bootstrap")
require("dep") {
}

require("carbon").setup({})

