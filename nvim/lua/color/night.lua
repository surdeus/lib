-- The night color scheme
local package = {}

local c = require("color.cons").colors

package.hls = {
  Normal = {fg = c.white, bg = c.black},

  LineNr = {fg = c.black, bg=c.white},

  Cursor = {fg = c.black, bg = c.green},
  CursorLine = {bold = true},

  StatusLine = {fg = c.black, bg = c.red},
  StatusLineNC = {fg = c.black, bg = c.lgray},

  IncSearch = {fg=c.black, bg=c.purple},
  Search = {fg=c.black, bg=c.purple},
  Pmenu = {fg=c.black, bg=c.lpurple},

  String = {fg=c.red},
  Constant = {fg=c.red},
  Special = {fg=c.lblue},

  Function = {fg = c.lyellow},
  Statement = {fg = c.lyellow},
  Type = {fg = c.green},

  Comment = {fg=c.purple},
  Folded = {fg=c.black, bg=lgray},
  FoldColumn = {fg=c.black, bg=lgray},
}

return package
