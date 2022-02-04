require('indent_blankline').setup {
  buftype_exclude = {'terminal'},
  filetype_exclude = {'NvimTree', 'alpha', 'packer', 'Trouble'},
  char = "",
  context_char = "│",
  show_current_context = true,
  show_current_context_start = true,
  use_treesitter = true,
}
