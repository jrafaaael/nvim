require'nvim-treesitter.configs'.setup {
  ensure_installed = {'typescript', 'javascript', 'tsx', 'vue', 'css', 'html', 'graphql', 'json', 'lua', 'vim'},
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ['foo.bar'] = 'Identifier',
    },
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
      init_selection = ',',
      node_incremental = '<S-l>',
      scope_incremental = 'grc',
      node_decremental = '<S-h>',
    },
  },
}
