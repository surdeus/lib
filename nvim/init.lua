-- Surdeus init file.
-- surdeus@gmail.com

vim.opt.swapfile = false

vim.o.number = true
vim.o.cursorline = true

require("indent")
require("maps")

local hls = require("color.night").hls
require("color").apply_hls((hls))

require("bootstrap")
require("dep") {
}

