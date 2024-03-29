
local function escape(str)
	local escape_chars = [[;,."|\]]
	return vim.fn.escape(str, escape_chars)
end

local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]
local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
vim.opt.langmap = vim.fn.join({
	escape(ru_shift) .. ';' .. escape(en_shift),
	escape(ru) .. ';' .. escape(en),
}, ',')

vim.o.timeout = false
-- Key mapping
local map = vim.api.nvim_set_keymap

-- Configuration fast editing.
local opts = {nowait=true, silent = true}
	map('n', '\\rconf', ':source $HOME/lib/nvim/init.lua\n', opts)
	map('n', '\\econf', ':e $HOME/lib/nvim/init.lua\n', opts)
	map('n', '\\emap', ':e $HOME/lib/nvim/lua/maps.lua\n', opts)
	map('n', '\\ic', ':set ic!\n', opts)

	map('n', '<Return>', 'o<Esc>', opts)

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

-- Fold
	map('n', '<2-LeftMouse>', 'za', opts)
-- Insert
	-- Literal tabs with Shift-Tab
	map('i', '<S-Tab>', '\t', opts)
	map('n', '<Backspace>', 'hx', opts)

-- Empty
	map('n', '<C-l>', '', opts)

-- Help.
	map('n', '\\th', ":tab help ", {silent=false})
-- vim.api.nvim_del_keymap('n', '<C-l>')
-- vim.api.nvim_del_keymap('n', '<C-r>')
-- Windows
	-- Moving 
	map('n', '<S-b>', '<C-b>', opts)
	map('n', '<S-f>', '<C-f>', opts)
	opts = {silent = true}
	map('n', '<A-l>', '<C-w>l', opts)
	map('n', '<A-h>', '<C-w>h', opts)
	map('n', '<A-k>', '<C-w>k', opts)
	map('n', '<A-j>', '<C-w>j', opts)

	map('n', 'gl', '<C-w>l', opts)
	map('n', 'gh', '<C-w>h', opts)
	map('n', 'gk', '<C-w>k', opts)
	map('n', 'gj', '<C-w>j', opts)
	-- Resizing
	map('n', '+', '<C-w>+', opts)
	map('n', '-', '<C-w>-', opts)
	-- map('n', '<C-h>', '3<C-w><', opts)
	-- map('n', '<C-l>', '3<C-w>>', opts)
	map('n', '<Space>', '3<C-w>>', opts)
	map('n', '<C-Space>', '3<C-w><', opts)
	-- Splitting
	map('n', '\\|', '<C-w>v', opts)
	map('n', '\\-', '<C-w>s', opts)

	-- Move
	map('n', 'L', '$', opts)
	map('n', 'H', '^', opts)

-- Netrw
vim.api.nvim_create_autocmd('filetype', {
	pattern = 'netrw',
	callback = function()
		local buf = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_keymap(buf, "n", 'f', '%', opts)
	end,
})

