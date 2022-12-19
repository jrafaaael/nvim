local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local FORMAT_ON_SAVE = false

null_ls.setup({
  sources = {
    -- null_ls.builtins.formatting.prettierd.with({
    --   condition = function(utils)
    --     return utils.root_has_file({ '.prettierrc', ".prettierrc.json" })
    --   end
    -- }),
    null_ls.builtins.diagnostics.eslint_d.with({
      condition = function(utils)
        return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json" })
      end,
    }),
    -- null_ls.builtins.formatting.eslint_d.with({
    --   condition = function(utils)
    --     return utils.root_has_file({ '.eslintrc.js', ".eslintrc.json" }) and
    --         not utils.root_has_file({ '.prettierrc', ".prettierrc.json" })
    --   end
    -- }),
    -- null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.formatting.black
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          if FORMAT_ON_SAVE then
            vim.lsp.buf.format({ bufnr = bufnr })
          end
        end,
      })
    end
  end,
})
