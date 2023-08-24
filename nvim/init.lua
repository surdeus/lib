vim.o.smarttab = true

vim.o.swapfile = false

vim.o.number = true
vim.api.nvim_cmd({
	cmd = 'colorscheme',
	args = {'slate'},
}, {})

-- Key mapping
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', 'confr', ':source $HOME/lib/nvim/init.lua\n', opts)
map('n', 'confe', ':e      $HOME/lib/nvim/init.lua\n', opts)
