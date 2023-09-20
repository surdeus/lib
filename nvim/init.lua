-- Surdeus init file.
-- surdeus@gmail.com

-- Reload all the modules without caching.
for name, _ in pairs(package.loaded) do
  package.loaded[name] = nil
end

vim.cmd.language("en_US")
vim.opt.swapfile = false

vim.o.number = true
vim.o.cursorline = true
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkoff700-blinkoff400-blinkoff250-Cursor/lCursor'
vim.opt.listchars = {
  tab = '|-',
  trail = '.',
  lead = '.',
}
vim.opt.list = true

require("indent")
require("maps")

local hls = require("color.night").hls
require("color").apply_hls((hls))

--require'lspconfig'.gopls.setup{}

require("bootstrap")
require("dep") {
}

