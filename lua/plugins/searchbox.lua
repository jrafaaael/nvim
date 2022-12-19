require('searchbox').setup({
  popup = {
    -- other popup options
    border = {
      -- other popup border options
      -- do not include `highlight` here
      highlight = 'Normal:Normal, FloatBorder:Normal',
    },
    win_options = {
      winhighlight = 'Normal:Normal',
    },
  },
  -- other options
})
