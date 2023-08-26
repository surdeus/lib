
-- Key mapping
local map = vim.api.nvim_set_keymap

-- Configuration fast editing.
local opts = {noremap = true, silent = true}
map('n', 'confr', ':source $HOME/lib/nvim/init.lua\n', opts)
map('n', 'confe', ':e      $HOME/lib/nvim/init.lua\n', opts)
-- File tree.
map('n', '\\ft', ':NvimTreeFocus\n', opts)
map('n', '\\fT', ':NvimTreeToggle .\n', opts)
-- Tabs.
map('n', '\\tn', ':tabnew\n', opts)


-- Windows
	-- Moving 
	opts = {silent = true}
	map('n', '<C-l>', '<C-w>l', opts)
	map('n', '<C-h>', '<C-w>h', opts)
	map('n', '<C-k>', '<C-w>k', opts)
	map('n', '<C-j>', '<C-w>j', opts)
	-- Splitting
	map('n', '\\|', '<C-w>v', opts)
	map('n', '\\-', '<C-w>s', opts)

