local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.cssmodules_ls.setup{
  capabilities = capabilities,
  init_options = {
    camelCase = false,
  }
}
