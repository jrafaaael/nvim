local cmd = vim.cmd
local kanagawa = require('kanagawa')
local default_colors = require("kanagawa.colors").setup()
-- Default options:
kanagawa.setup({
  undercurl = true,           -- enable undercurls
  commentStyle = "italic",
  functionStyle = "bold",
  keywordStyle = "NONE",
  statementStyle = "NONE",
  typeStyle = "NONE",
  variablebuiltinStyle = "NONE",
  specialReturn = true,       -- special highlight for the return keyword
  specialException = true,    -- special highlight for exception handling keywords
  transparent = false,        -- do not set background color
  dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
  globalStatus = false,       -- adjust window separators highlight for laststatus=3
  colors = {},
  overrides = {
    htmlTSTag = {fg = default_colors.waveRed}
  },
})

-- setup must be called before loading
cmd("colorscheme kanagawa")
