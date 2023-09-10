-- The night color scheme
local package = {}

local c = require("color.cons").colors

package.hls = {
  Normal = {fg = "white", bg = "black"},

  TabLine = {bold = false, fg = "black", bg = "darkgray" },
  TabLineSel = {bold = true, fg = "black", bg="white"},

  TabLineFill = {bold = false, bg = "gray"},

  LineNr = {bold = false, fg = "gray"},
  CursorLineNr = {bold = true, fg="white"},

  Cursor = {reverse=true},
  lCursor = {reverse=true},
  CursorLine = {bold = true},

  StatusLine = {bold = true, fg="black", bg="white"},
  StatusLineNC = {bold= false, fg = "black", bg = "darkgray"},

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
  Identifier = {bold = true, fg = "yellow"},

  Folded = {fg="gray", bg="none"},
  FoldColumn = {fg="black", bg="gray"},

  Ignore = {fg="lightgreen"},
  Error = {fg="white", bg="red"},
  Underlined = {underline = true},

  VertSplit = {bold=true, fg="gray"},

  Visual = {reverse=true},
}

return package
