-- The night color scheme
local package = {}

local c = require("color.cons").colors

package.hls = {
  Normal = {fg = c.white, bg = c.black},

  TabLine = {fg = c.black, bg = c.lgray},
  TabLineSel = {fg = c.black, bg = c.green},
  TabLineFill = {bg = c.gray},

  LineNr = {fg = c.black, bg=c.white},
  CursorLineNr = {fg = c.white, bg=c.black},

  Cursor = {reverse=true},
  lCursor = {reverse=true},
  CursorLine = {bold = true},

  StatusLine = {fg = c.black, bg = c.green},
  StatusLineNC = {fg = c.black, bg = c.lgray},

  IncSearch = {fg=c.black, bg=c.purple},
  Search = {fg=c.black, bg=c.purple},
  Pmenu = {fg=c.black, bg=c.lpurple},

  String = {fg=c.red},
  Constant = {fg=c.red},
  Special = {fg=c.green},

  Function = {bold = true, fg = c.lyellow},
  Statement = {bold = true, fg = c.lyellow},
  Type = {bold = true, fg = c.lgreen},
  Structure = {bold = true, fg = c.green},
  Operator = {bold = true, fg = c.green},

  Comment = {fg=c.purple},
  PreProc = {fg=c.lpurple},
  Define = {fg=c.lpurple},

  Folded = {fg=c.black, bg=lgray},
  FoldColumn = {fg=c.black, bg=lgray},

  Ignore = {fg=c.lgreen},
  Error = {fg=c.white, bg=c.red},
  Underlined = {underline = true},
}

return package
