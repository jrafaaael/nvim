require'lspconfig'.pyright.setup{
  on_attach = function(client)
    require('illuminate').on_attach(client)
  end
}
