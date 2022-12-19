local function get_keys(t)
  local keys = {}
  for key, _ in pairs(t) do
    table.insert(keys, key)
  end
  return keys
end

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = get_keys(vim.g.SERVERS)
})

require("mason-null-ls").setup({
  ensure_installed = { "eslint_d", "prettierd", "flake8", "black" },
})

require("mason-nvim-dap").setup({
  ensure_installed = { "debugpy" }
})
