local util = require 'vim.lsp.util'

local formatting_callback = function(client, bufnr)
  vim.keymap.set('n', '<leader>f', function()
    local params = util.make_formatting_params({})
    client.request('textDocument/formatting', params, nil, bufnr)
  end, { buffer = bufnr })
end

require("typescript").setup({
  disable_commands = false, -- prevent the plugin from creating Vim commands
  debug = false, -- enable debug logging for commands
  server = {
    on_attach = function (client, bufnr)
      formatting_callback(client, bufnr)
      on_attach(client, bufnr)
    end,
  }
})
