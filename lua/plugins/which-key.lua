local wk = require('which-key')

wk.setup {
  window = {
    border = 'none', -- none, single, double, shadow
    position = 'bottom', -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 3, 2, 3, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 6, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 10, -- spacing between columns
    align = 'left', -- align columns left, center or right
  },
}

wk.register({
  ['.'] = 'Code Action',
  ['/'] = 'Comment',
  -- [';'] = 'Initial screen',
  w = 'Save current buffer',
  c = 'Close current buffer',
  e = 'Open explorer',
  v = 'Split right',
  -- h = 'Split below',
  q = 'Quit nvim',
  W = 'Save current buffer and quit nvim',
  g = 'Lazygit',
  T = 'Trouble',
  f = {
    name = 'Find', -- optional group name
    f = {'Find file'},
    w = {'Find word'},
    b = {'Find buffer'},
    h = {'Find help tags'},
    p = {'Find projects'},
    r = {'Find recent opened files'},
    t = {'Find todo comments'},
    g = {
      name = 'Git',
      s = {'Status'},
      c = {'Commits'},
      b = {'Branches'},
    }
  },
  l = {
    name = 'LSP',
    r = {'References'},
    p = {'Preview definition'},
    R = {'Rename file'},
    d = {'Diagnostics'},
    o = {'Organize imports'},
    i = {'Import all'}
  },
  -- g = {
  --   name = 'Git',
  --   s = 'Stage hunk',
  --   u = 'Undo stage hunk',
  --   r = 'Reset hunk',
  --   R = 'Reset buffer',
  --   S = 'Stage buffer',
  --   b = 'Blame line',
  --   U = 'Reset buffer index',
  --   g = 'Lazygit'
  -- },
  P = {
    name = 'Packer',
    c = 'Clean',
    i = 'Install',
    s = 'Status',
    u = 'Update',
  }
}, { prefix = '<leader>' })

wk.register({
  ['/'] = 'Comment',
  S = 'Search selected text',
  R = 'Replace selected text',
}, {
  mode = 'v',
  prefix = '<leader>'
})

wk.register({
  b = 'Go to buffer',
  d = 'Go to definition'
}, {prefix = 'g'})
