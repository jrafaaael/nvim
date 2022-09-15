local colorizer = require('colorizer')

colorizer.setup({
  user_default_options = {
    RRGGBBAA = true, -- #RRGGBBAA hex codes
    css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
    tailwind = true, -- Enable tailwind colors
    -- Available modes for `mode`: foreground, background,  virtualtext
    mode = "foreground", -- Set the display mode.
  }
})
