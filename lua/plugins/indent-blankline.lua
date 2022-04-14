local cmd = vim.cmd

require('indent_blankline').setup {
  buftype_exclude = {'terminal', "prompt", "nofile", "help"},
  filetype_exclude = {'NvimTree', 'alpha', 'packer', 'Trouble', 'lspinfo'},
  use_treesitter = false,
}

cmd'hi IndentBlanklineChar guifg=#3d4351'
