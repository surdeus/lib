-- The night color scheme
local package = {}

local c = require("color.cons").colors

package.hls = {
  Normal = {fg = "white", bg = "black"},

  TabLine = {fg = "black", bg = "lightgray"},
  TabLineSel = {fg = "white", bg="green", ctermbg = "darkgreen"},
  TabLineFill = {bg = "darkgray"},

  LineNr = {fg = "black", bg="lightgray"},
  CursorLineNr = {fg = "white", bg="green", ctermbg="darkgreen"},

  Cursor = {reverse=true},
  lCursor = {reverse=true},
  CursorLine = {bold = true},

  StatusLine = {fg = "white", bg="green", ctermbg = "darkgreen"},
  StatusLineNC = {fg = "black", bg = "lightgray"},

  IncSearch = {fg="black", bg="magenta"},
  Search = {fg="black", bg="magenta"},
  Pmenu = {fg="black", bg="magenta"},
  Comment = {fg="magenta"},
  PreProc = {fg="magenta"},
  Define = {fg="magenta"},

  String = {fg="red"},
  Constant = {fg="red"},
  Special = {fg="lightgreen"},

  Function = {bold = true, fg = "yellow"},
  Statement = {bold = true, fg = "yellow"},
  Type = {bold = true, fg = "lightgreen"},
  Structure = {bold = true, fg = "lightgreen"},
  Operator = {bold = true, fg = "lightgreen"},

  Folded = {fg="black", bg="lightgray"},
  FoldColumn = {fg="black", bg="lightgray"},

  Ignore = {fg="lightgreen"},
  Error = {fg="white", bg="red"},
  Underlined = {underline = true},
}

return package
