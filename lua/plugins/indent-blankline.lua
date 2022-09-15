local cmd = vim.cmd

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require('indent_blankline').setup {
  buftype_exclude = { 'terminal', "prompt", "nofile", "help" },
  filetype_exclude = { 'NvimTree', 'alpha', 'packer', 'Trouble', 'lspinfo' },
  use_treesitter = true,
  space_char_blankline = " ",
  show_current_context = true,
}

cmd 'hi IndentBlanklineChar guifg=#3d4351'
