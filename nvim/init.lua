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

-- Do not put basic things after it,
-- because the manager does not like it.

-- Plugin manager "Lazy"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
plugins = {
	require("plugin.tree")
}
require("lazy").setup(plugins, opts)

-- File tree plugin configuration
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
	git = {
		enable=false,
	},
})


