return {
	"nvim-tree/nvim-tree.lua",
	git = {
		disable = true,
		enable = false,
	},
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
	end,
}
