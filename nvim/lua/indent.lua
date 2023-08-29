
vim.o.autoindent = true
vim.o.expandtab = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4

createAutoCmd = vim.api.nvim_create_autocmd

createAutoCmd({
	"BufNewFile",
	"BufRead",
},{
	pattern = "*.lua,*.js,*.jsx,*.scss,*.css,*.html,*.tmpl,*.tpl",
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


