-- Main package for highlighting
local c = require("color.cons").colors
local package = {}

function package.apply_hls(hls)
  hls = hls or {}
  for k, hl in pairs(hls) do
    vim.api.nvim_set_hl(
      0,
      k,
      hl
    )
  end
end

return package
