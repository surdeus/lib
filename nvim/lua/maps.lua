
vim.o.timeout = false
-- Key mapping
local map = vim.api.nvim_set_keymap

-- Configuration fast editing.
local opts = {silent = true}
	map('n', '\\rconf', ':source $HOME/lib/nvim/init.lua\n', opts)
	map('n', '\\econf', ':e      $HOME/lib/nvim/init.lua\n', opts)
	map('n', '\\emap', ':e $HOME/lib/nvim/lua/maps.lua\n', opts)

-- Quit
  map('n', '\\q', ":quit\n", opts)
  map('n', '\\qa', ":qa\n", opts)

-- Moving around.
	map('n', '\\home', ":cd $HOME\n", opts)
	map('n', '\\cd', ":cd ", {silent = false})
	map('n', '\\lcd', ":lcd ", {silent = false})
	map('n', '\\tcd', ":tcd ", {silent = false})
	map('n', '\\pwd', ':pwd\n', {silent = false})
  map('n', '\\aa', ':argadd ', {silent = false})
  map('n', '\\bb', ':b ', {silent = false})
  map('n', '\\b#', ':b#\n ', {silent = true})

  map('n', '\\lex', ":Lexplore\n", opts)
  map('n', '\\ex', ":Explore\n", opts)

-- Search
  map('n', '\\noh', ':noh\n', opts)

-- Tabs.
	map('n', '\\tn', ':tabnew\n', opts)

-- Insert
	-- Literal tabs with Shift-Tab
	map('i', '<S-Tab>', '\t', opts)


-- Empty
  map('n', '<C-l>', '', opts)
	
-- vim.api.nvim_del_keymap('n', '<C-l>')
-- vim.api.nvim_del_keymap('n', '<C-r>')
-- Windows
	-- Moving 
	opts = {silent = true}
	map('n', '<A-l>', '<C-w>l', opts)
	map('n', '<A-h>', '<C-w>h', opts)
	map('n', '<A-k>', '<C-w>k', opts)
	map('n', '<A-j>', '<C-w>j', opts)
	-- Resizing
	map('n', '<C-k>', '<C-w>+', opts)
	map('n', '<C-j>', '<C-w>-', opts)
	-- map('n', '<C-h>', '3<C-w><', opts)
	-- map('n', '<C-l>', '3<C-w>>', opts)
	map('n', '<Space>', '3<C-w>>', opts)
	map('n', '<C-Space>', '3<C-w><', opts)
	-- Splitting
	map('n', '\\|', '<C-w>v', opts)
	map('n', '\\-', '<C-w>s', opts)

-- Netrw
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  callback = function()
	local buf = vim.api.nvim_get_current_buf()
	vim.api.nvim_buf_set_keymap(buf, "n", 'f', '%', opts)
  end,
})

