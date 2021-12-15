local custom_theme = require'lualine.themes.onedark'
custom_theme.normal.c.bg = '#212121'

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    -- component_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
       'branch',
       {
         'diff',
         diff_color = {added = {fg = '#87BE48'}, removed = {fg = '#ED4135'}},
         symbols = {added = '+', modified = '~', removed = '-'}
       },
       -- {'diagnostics', sources={'nvim_lsp', 'coc'}}
    },
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'nvim-tree'}
}
