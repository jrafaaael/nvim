local opt = vim.opt
local g = vim.g
local signs = {
  Hint = "",
  Info = "",
  Warn = "",
  Error = "",
}

g.mapleader = ' '

opt.number = true
opt.relativenumber = true
-- opt.ruler = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.showcmd = true
opt.showmatch = true
opt.wrap = true
opt.hidden = true
opt.termguicolors = true
opt.splitright = true
opt.tabstop = 2
opt.cul = true
opt.title = true
opt.undofile = true
opt.autoindent = true
-- opt.cursorline = true
opt.showmode = false
opt.foldmethod = "expr"
opt.foldlevel = 10
opt.backup = false
opt.hlsearch = true
opt.smartindent = true
opt.swapfile = false
opt.writebackup = false
opt.expandtab = true
opt.shiftwidth = 2
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.list = true
opt.timeoutlen = 300
opt.pumheight = 10

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
