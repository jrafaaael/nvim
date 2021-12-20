local null_ls = require("null-ls")

null_ls.config({
  -- you must define at least one source for the plugin to work
  sources = {
    null_ls.builtins.formatting.prettier,
    -- null_ls.builtins.diagnostics.eslint_d
  }
})

require("lspconfig")["null-ls"].setup({
  -- see the nvim-lspconfig documentation for available configuration options
  on_attach = function(client)
    -- if client.resolved_capabilities.document_formatting then
    --     vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    -- end
  end
})
