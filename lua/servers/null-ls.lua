local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require("null-ls").setup({
  capabilities = capabilities,
  sources = {
    require("null-ls").builtins.formatting.prettier,
    require("null-ls").builtins.diagnostics.eslint,
  },
})
