local vi_mode_utils = require 'feline.providers.vi_mode'
local kanagawa_colors = require("kanagawa.colors").setup()
local colors = {
  bg = '#2c323c',
  fg = 'NONE',
  yellow = '#e5c07b',
  cyan = '#8abeb7',
  darkblue = '#528bff',
  green = '#98c379',
  orange = '#d19a66',
  violet = '#b294bb',
  magenta = '#ff80ff',
  blue = '#61afef';
  red = '#e88388';
}
local vi_mode_colors = {
  NORMAL = colors.green,
  INSERT = colors.blue,
  VISUAL = colors.violet,
  ['V-LINE'] = colors.violet,
  OP = colors.green,
  BLOCK = colors.blue,
  REPLACE = colors.red,
  ['V-REPLACE'] = colors.red,
  ENTER = colors.cyan,
  MORE = colors.cyan,
  SELECT = colors.orange,
  COMMAND = colors.magenta,
  SHELL = colors.green,
  TERM = colors.blue,
  NONE = colors.yellow
}
local vi_mode_text = {
  n = "NORMAL",
  i = "INSERT",
  v = "VISUAL",
  [''] = "V-BLOCK",
  V = "V-LINE",
  c = "COMMAND",
  no = "UNKNOWN",
  s = "UNKNOWN",
  S = "UNKNOWN",
  ic = "UNKNOWN",
  R = "REPLACE",
  Rv = "UNKNOWN",
  cv = "UNKWON",
  ce = "UNKNOWN",
  r = "REPLACE",
  rm = "UNKNOWN",
  t = "INSERT"
}
local diagnostics_colors = {
  error = '#EC5F67',
  warn = '#EBCB8B',
  hint = '#88C0D0',
  info = '#5E81AC'
}

local components = {
  vimode = {
    provider = function()
      local current_text = ' '..vi_mode_text[vim.fn.mode()]..' '
      return current_text
    end,
    hl = function()
      local val = {
        name = vi_mode_utils.get_mode_highlight_name(),
        fg = colors.bg,
        bg = vi_mode_colors[vi_mode_text[vim.fn.mode()]],
        -- bg = vi_mode_utils.get_mode_color(),
        style = 'bold'
      }
      return val
    end,
  },
  file = {
    provider = 'file_info',
    hl = {
      fg = colors.blue,
      bg = kanagawa_colors.winterBlue,
      style = 'bold'
    },
    left_sep = {
      str = ' ',
      hl = {
        bg = kanagawa_colors.winterBlue,
      }
    },
    right_sep = {
      str = ' ',
      hl = {
        bg = kanagawa_colors.winterBlue,
      }
    },
  },
  git = {
    branch = {
      provider = 'git_branch',
      icon = ' ',
      hl = {
        fg = kanagawa_colors.fujiWhite,
        bg = kanagawa_colors.winterBlue,
        style = 'bold'
      },
    },
    add = {
      provider = 'git_diff_added',
      hl = {
        fg = colors.green,
        bg = kanagawa_colors.winterBlue,
      },
    },
    change = {
      provider = 'git_diff_changed',
      hl = {
        fg = colors.orange,
        bg = kanagawa_colors.winterBlue,
      },
    },
    remove = {
      provider = 'git_diff_removed',
      hl = {
        bg = kanagawa_colors.winterBlue,
        fg = colors.red
      },
    }
  },
  diagnostics = {
    errors = {
      -- provider = 'diagnostic_errors',
      provider = function()
        local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
        return (count > 0) and ' '..count..' ' or ''
      end,
      hl = {
        bg = diagnostics_colors.error,
        fg = colors.bg,
        style = 'bold'
      },
      left_sep = {
        str = 'left_filled',
        always_visible = true,
        hl = {
          bg = kanagawa_colors.winterBlue,
          fg = diagnostics_colors.error
        }
      }
    },
    warn = {
      -- provider = 'diagnostic_warnings',
      provider = function()
        local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
        return (count > 0) and ' '..count..' ' or ''
      end,
      hl = {
        bg = diagnostics_colors.warn,
        fg = colors.bg,
        style = 'bold'
      },
      left_sep = {
        str = 'left_filled',
        always_visible = true,
        hl = {
          bg = diagnostics_colors.error,
          fg = diagnostics_colors.warn,
        }
      }
    },
    hints = {
      -- provider = 'diagnostic_hints',
      provider = function()
        local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
        return (count > 0) and ' '..count..' ' or ''
      end,
      hl = {
        bg = diagnostics_colors.hint,
        fg = colors.bg,
        style = 'bold'
      },
      left_sep = {
        str = 'left_filled',
        always_visible = true,
        hl = {
          bg = diagnostics_colors.warn,
          fg = diagnostics_colors.hint,
        }
      }
    },
    info = {
      -- provider = 'diagnostic_info',
      provider = function()
        local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
        return (count > 0) and ' '..count..' ' or ''
      end,
      hl = {
        bg = diagnostics_colors.info,
        fg = colors.bg,
        style = 'bold'
      },
      left_sep = {
        str = 'left_filled',
        always_visible = true,
        hl = {
          bg = diagnostics_colors.hint,
          fg = diagnostics_colors.info,
        }
      }
    }
  },
  lsp_clients = {
    provider = 'lsp_client_names',
    hl = {
      bg = kanagawa_colors.winterBlue,
      style = 'bold'
    },
    right_sep = {
      str = ' ',
      hl = {
        bg = kanagawa_colors.winterBlue,
      }
    },
  },
  scroll_bar = {
    provider = 'scroll_bar',
    hl = {
      fg = colors.darkblue,
      style = 'bold'
    },
    left_sep = {
      str = ' ',
      hl = {
        bg = kanagawa_colors.winterBlue,
      }
    },
    right_sep = {
      str = ' ',
      hl = {
        bg = kanagawa_colors.winterBlue,
      }
    }
  },
}

local active = {
  {
    components.vimode,
    components.file,
    components.git.branch,
    components.git.add,
    components.git.change,
    components.git.remove,
    {
      hl = {
        bg = kanagawa_colors.winterBlue,
      },
      left_sep = ' '
    }
  },
  {
    components.lsp_clients,
    components.diagnostics.errors,
    components.diagnostics.warn,
    components.diagnostics.hints,
    components.diagnostics.info,
    {
      hl = {
        bg = diagnostics_colors.info,
      },
      left_sep = {
        str = 'left_filled',
        always_visible = true,
        hl = {
          bg = diagnostics_colors.info,
          fg = kanagawa_colors.winterBlue
        }
      }
    },
    components.scroll_bar
  }
}

require('feline').setup({
  components = {
    active = active,
  }
})
