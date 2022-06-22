local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint_d.with({
        condition = function(utils)
          return utils.root_has_file({ '.eslintrc.js' })
        end,
    }),
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.formatting.black
  },
})
