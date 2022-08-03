local tree_cb = require'nvim-tree.config'.nvim_tree_callback
local nvim_tree = require'nvim-tree'

nvim_tree.setup {
  auto_reload_on_write = true,
  create_in_closed_folder = true,
  disable_netrw        = true,
  hijack_cursor        = false,
  hijack_netrw         = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup        = false,
  open_on_setup_file = false,
  open_on_tab          = false,
  update_cwd           = true,
  reload_on_bufenter = true,
  respect_buf_cwd = false,
  ignore_ft_on_setup   = {},
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = "",
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = { '.git' },
    exclude = { '.gitignore' }
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 400,
  },
  view = {
    width = 35,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    number = true,
    relativenumber = true,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        {key = "h", cb = tree_cb("close_node")},
        {key = "l", cb = tree_cb("edit")},
        {key = "V", cb = tree_cb("vsplit")},
        {key = "H", cb = tree_cb("split")}
      }
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    expand_all = {
      max_folder_discovery = 300,
    },
    open_file = {
      quit_on_open = true,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    },
    remove_file = {
      close_window = true,
    },
  },
  renderer = {
    add_trailing = true,
    group_empty = false,
    highlight_git = true,
    highlight_opened_files = "none",
    root_folder_modifier = ":~",
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  }
}
