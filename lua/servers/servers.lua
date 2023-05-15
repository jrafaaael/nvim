vim.g.SERVERS = {
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
  lua_ls = {
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
  prismals = {},
  yamlls = {
    settings = {
      yaml = {
        schemas = {
          ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*"
        },
      },
    }
  },
  astro = {},
  tsserver = {},
  svelte = {},
  volar = {},
  intelephense = {},
}
