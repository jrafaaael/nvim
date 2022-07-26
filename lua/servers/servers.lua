local SERVERS = {
  cssls = {},
  cssmodules_ls = {},
  html = {},
  jsonls = {
    filetypes = { "json", "jsonc" },
    settings = {
      json = {
        -- Schemas https://www.schemastore.org
        schemas = {
          {
            fileMatch = {"package.json"},
            url = "https://json.schemastore.org/package.json"
          },
          {
            fileMatch = {"tsconfig*.json"},
            url = "https://json.schemastore.org/tsconfig.json"
          },
          {
            fileMatch = {"jsconfig*.json"},
            url = "https://json.schemastore.org/tsconfig.json"
          },
          {
            fileMatch = {
              ".prettierrc",
              ".prettierrc.json",
            },
            url = "https://json.schemastore.org/prettierrc.json"
          },
          {
            fileMatch = {
              ".eslintrc.json"
            },
            url = "https://json.schemastore.org/eslintrc.json"
          },
          {
            fileMatch = {
              ".babelrc",
              ".babelrc.json",
              "babel.config.json"
            },
            url = "https://json.schemastore.org/babelrc.json"
          },
        }
      }
    }
    -- settings = {
    --   json = {
    --     schemas = require('schemastore').json.schemas({
    --       select = {
    --         "package.json",
    --         "tsconfig.json",
    --         -- ".prettierrc",
    --         "prettierrc.json",
    --         -- "prettier.config.json",
    --         ".eslintrc",
    --         -- ".eslintrc.json",
    --         -- ".babelrc",
    --         "babelrc.json",
    --         -- "babel.config.json",
    --       }
    --     }),
    --     validate = { enable = true },
    --   }
    -- }
  },
  pyright = {},
  sumneko_lua = {
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { 'vim' },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    },
  },
  tailwindcss = {},
}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require('cmp_nvim_lsp').update_capabilities(capabilities)

require('nvim-lsp-installer').setup({
  ensure_installed = SERVERS
})

for server, config in pairs(SERVERS) do
  require('lspconfig')[server].setup(
    vim.tbl_deep_extend("force", { capabilities = capabilities, on_attach = on_attach }, config)
  )
end
