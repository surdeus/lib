
-- Golang, C based configuration
vim.o.autoindent = true
vim.o.foldmethod = 'indent'

createAutoCmd = vim.api.nvim_create_autocmd

-- Basic thing for compiling languages.
createAutoCmd({
	"BufNewFile",
	"BufRead",
},{
	pattern = "*.go,*.c,*.cc,*.C,*.cpp,*.rs,*.lua",
	callback = function()
		local buf = vim.bo[vim.api.nvim_get_current_buf()]
		vim.o.expandtab = false
		vim.o.tabstop = 4
		vim.o.shiftwidth = 4
	end,
})

createAutoCmd({
	"BufNewFile",
	"BufRead",
},{
	pattern = "*.txt,*.js,*.jsx,*.scss,*.css,*.sass,*.html,*.htmlx,*.tmpl,*.tpl,*.yml,*.yaml,*.toml,*.tml",
	callback = function()
		local buf = vim.bo[vim.api.nvim_get_current_buf()]
		buf.expandtab = true
		buf.shiftwidth=2
		buf.tabstop=2
		buf.softtabstop = 0
	end,
})

createAutoCmd({
	"BufNewFile",
	"BufRead",
},{
	pattern = "*.md,*.py",
	callback = function()
		local buf = vim.bo[vim.api.nvim_get_current_buf()]
		buf.expandtab = true
		buf.shiftwidth=4
		buf.tabstop=4
		buf.softtabstop = 0
	end,
})



