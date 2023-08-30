
vim.o.timeout = false
-- Key mapping
local map = vim.api.nvim_set_keymap

-- Configuration fast editing.
local opts = {silent = true}
	map('n', '\\rconf', ':source $HOME/lib/nvim/init.lua\n', opts)
	map('n', '\\econf', ':e      $HOME/lib/nvim/init.lua\n', opts)
	map('n', '\\rmap', ':source $HOME/lib/nvim/lua/maps.lua\n', opts)
	map('n', '\\emap', ':e $HOME/lib/nvim/lua/maps.lua\n', opts)

-- Moving around.
	map('n', '\\home', ":cd $HOME\n", opts)

  map('n', '\\lex', ":Lexplore\n", opts)
  map('n', '\\ex', ":Explore\n", opts)

-- Search
  map('n', '\\noh', ':noh\n', opts)

-- Tabs.
	map('n', '\\tn', ':tabnew\n', opts)

-- Line
	-- map('n', '\\nl', ':if &cursorline==1<enter>set nocursorline<enter>else set cursoreline<enter>endif<enter><enter>', opts)

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
	map('n', '<C-h>', '3<C-w><', opts)
	map('n', '<C-l>', '3<C-w>>', opts)
	map('n', '<Space>', '3<C-w>>', opts)
	map('n', '<C-Space>', '3<C-w><', opts)
	-- Splitting
	map('n', '\\|', '<C-w>v', opts)
	map('n', '\\-', '<C-w>s', opts)

