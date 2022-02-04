local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.pyright.setup{
  capabilities = capabilities,
  on_attach = function(client)
    require('illuminate').on_attach(client)
  end
}
