-- Main package for highlighting
local c = require("color.cons").colors
local package = {}

function package.apply_hls(hls)
  hls = hls or {}
  for k, hl in pairs(hls) do
    hl.ctermfg = hl.ctermfg or hl.fg or nil
    hl.ctermbg = hl.ctermbg or hl.bg or nil
	hl.cterm = {
		bold = hl.bold or nil,
		underline = hl.underline or nil,
	}
    vim.api.nvim_set_hl(
      0,
      k,
      hl
    )
  end
end

return package
