local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')

nvim_lsp['cssls'].setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
}
