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
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor'


require("indent")
require("maps")

local hls = require("color.night").hls
require("color").apply_hls((hls))

require("bootstrap")
require("dep") {
}

