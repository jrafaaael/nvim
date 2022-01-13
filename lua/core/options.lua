local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

local signs = { Error = "⮾ ", Warn = "⚠ ", Hint = " ", Info = "🛈 " }

opt.number = true
opt.relativenumber = true
opt.ruler = true
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
opt.cursorline = true
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
opt.timeoutlen = 200

g.completeopt = 'menu,menuone,noselect,noinsert'
g.mapleader = ' '
g.onedark_toggle_style_keymap = '<nop>'

-- Colorscheme
cmd ([[
  colorscheme onedark
]])
-- Virtual Text colors
cmd([[
  :highlight DiagnosticVirtualTextError guifg=#e86671 guibg=none
  :highlight DiagnosticVirtualTextWarn guifg=#e5c07b guibg=none
  :highlight DiagnosticVirtualTextInfo guifg=#56b6c2 guibg=none
  :highlight DiagnosticVirtualTextHint guifg=#c678dd guibg=none
]])
-- Packer
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
-- Treesitter
cmd 'set foldexpr=nvim_treesitter#foldexpr()'
-- Gitsigns
cmd([[
  :highlight GitSignsCurrentLineBlame guifg=#4B5263
]])
-- Alpha
cmd([[
  autocmd FileType alpha set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
]])
-- Python3
cmd([[
  autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
]])
-- IndentBlankline
cmd([[
  highlight IndentBlanklineChar guifg=#343A45 gui=nocombine
]])
-- Help always on the right-side
vim.api.nvim_command([[
  autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif
]])
-- vim-illuminate
cmd([[
  :hi illuminatedWord cterm=underline gui=underline
]])

-- vim.lsp.handlers["textDocument/publishDiagnostics"] =
--   vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--       -- Disable underline, it's very annoying
--       underline = false,
--       -- virtual_text = false,
--       -- Enable virtual text, override spacing to 4
--       -- virtual_text = {spacing = 4},
--       -- Use a function to dynamically turn signs off
--       -- and on, using buffer local variables
--       signs = true,
--       update_in_insert = false
--   })

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.cmd([[
  :hi HopNextKey guifg=#e55561
  :hi HopNextKey1 guifg=#e55561
  :hi HopNextKey2 guifg=#e55561
]])
