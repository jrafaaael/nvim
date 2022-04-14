local actions = require('telescope.actions')
local telescope = require('telescope')

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
    file_ignore_patterns = { '.git/*', 'node_modules', 'env/*' },
    layout_config = {
      prompt_position = 'top',
    },
    prompt_prefix = '',
  },
  -- extension = {
  --   ["ui-select"] = {
  --     require("telescope.themes").get_dropdown {
  --     }
  --   }
  -- }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension('fzf')
-- telescope.load_extension('projects')
-- telescope.load_extension("ui-select")
