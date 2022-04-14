local wk = require("which-key")

wk.setup {
  window = {
    border = 'single', -- none, single, double, shadow
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
  w = 'Save changes',
  s = 'Search',
  -- r = 'Search and replace',
  c = 'Close current buffer',
  e = 'Open explorer',
  v = 'Split right',
  q = 'Quit nvim',
  f = {
    name = 'Find',
    f = 'File',
    w = 'Word',
    b = 'Buffer',
    h = 'Help tags',
    -- p = 'Find projects',
    r = 'Recent files',
    R = 'Registers',
    -- t = 'Find todo comments',
  },
  l = {
    name = 'LSP',
    o = 'Organize imports',
    R = 'Rename file',
    i = 'Import all',
  },
  P = {
    name = 'Packer',
    c = 'Clean',
    i = 'Install',
    s = 'Status',
    u = 'Update',
  },
  g = {
    name = 'Git',
    d = 'Preview diff',
    B = 'See blame info',
    g = 'LazyGit',
    s = 'Status',
    c = 'Commits',
    b = 'Branches',
    h = {
      name = 'Hunk',
      s = 'Stage hunk',
      u = 'Undo stage hunk',
      p = 'Preview hunk'
    }
  },
  r = {
    name = 'Replace',
    l = 'Replace in current file',
    g = 'Replace in current folder'
  },
}, { prefix = '<leader>' })

wk.register({
  ['/'] = 'Comment',
  s = 'Search selected text',
  r = {
    name = 'Replace',
    g = 'Replace text in current folder',
    l = 'Replace text in current file',
  },
}, {
  mode = 'v',
  prefix = '<leader>'
})

wk.register({
  b = 'Go to buffer',
  d = 'Go to definition',
  D = 'Go to declaration',
}, {prefix = 'g'})

wk.register({
  r = 'Replace',
  d = 'Delete',
  a = 'Add',
}, {prefix = 's'})
