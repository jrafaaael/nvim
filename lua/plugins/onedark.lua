local onedark = require('onedark')

onedark.setup {
  style = 'darker',
  toggle_style_key = '<nop>',
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'bold',
    strings = 'none',
    variables = 'none'
  },
}

onedark.load()
