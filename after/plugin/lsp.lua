local capabilities = vim.lsp.protocol.make_client_capabilities()
local lsp = vim.lsp
local keymap = vim.keymap.set
local util = require 'vim.lsp.util'
local signs = {
  Hint = "",
  Info = "",
  Warn = "",
  Error = "",
}

local mappings = function(bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  keymap('n', 'gD', vim.lsp.buf.declaration, opts)
  keymap('n', 'gd', vim.lsp.buf.definition, opts)
  keymap('n', 'gi', vim.lsp.buf.implementation, opts)
  keymap('n', '<C-f>', vim.lsp.buf.format, { noremap = true, silent = true })
  keymap("n", "<leader>lf", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
  keymap("n", "<leader>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
  keymap("n", "<leader>.", "<cmd>Lspsaga code_action<CR>", { silent = true })
  keymap("v", "<leader>.", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })
  keymap("n", "<F2>", "<cmd>Lspsaga rename<CR>", { silent = true })
  keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
  keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
  keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
  keymap("n", "KI", "<Cmd>Lspsaga signature_help<CR>", { silent = true })
end

local on_attach = function(client, bufnr)
  require "lsp_signature".on_attach({
    hint_enable = false,
  }) -- Note: add in lsp client on-attach

  -- Mappings.
  mappings(bufnr)
end

local formatting_callback = function(client, bufnr)
  vim.keymap.set('n', '<leader>f', function()
    local params = util.make_formatting_params({})
    client.request('textDocument/formatting', params, nil, bufnr)
  end, { buffer = bufnr })
end

lsp.handlers["textDocument/hover"] = lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

lsp.handlers["textDocument/signatureHelp"] = lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})

vim.diagnostic.config({
  float = {
    source = 'always',
    border = 'rounded',
  },
})

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

capabilities.textDocument.completion.completionItem.snippetSupport = true
require('cmp_nvim_lsp').default_capabilities(capabilities)

for server, config in pairs(vim.g.SERVERS) do
  if server == "tsserver" then
    require("typescript").setup({
      disable_commands = false, -- prevent the plugin from creating Vim commands
      debug = false, -- enable debug logging for commands
      server = {
        on_attach = function(client, bufnr)
          on_attach(client, bufnr)
          formatting_callback(client, bufnr)
        end,
        capabilities = capabilities
      },
    })
  else
    require('lspconfig')[server].setup(
      vim.tbl_deep_extend("force", { capabilities = capabilities, on_attach = on_attach }, config)
    )
  end
end
