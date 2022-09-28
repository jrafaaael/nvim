local cmd = vim.cmd

require 'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = { 'typescript', 'javascript', 'tsx', 'vue', 'css', 'html', 'go', 'json', 'lua', 'vim', 'python',
    'markdown', 'prisma', 'yaml', 'astro' },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<',
      node_incremental = '<',
      scope_incremental = 'grc',
      node_decremental = '>',
    },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

cmd 'set foldexpr=nvim_treesitter#foldexpr()'
