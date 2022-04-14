local lsp = vim.lsp
local cmd = vim.cmd

lsp.handlers["textDocument/hover"] = lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})
lsp.handlers["textDocument/signatureHelp"] = lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})

cmd([[
  hi FloatBorder guibg=NONE
  hi NormalFloat guibg=NONE
]])

vim.diagnostic.config({
  float = {
    source = 'always',
    border = 'rounded',
  },
})

-- cmd([[
--   :highlight DiagnosticVirtualTextError guifg=#EC5F67 guibg=none
--   :highlight DiagnosticVirtualTextWarn guifg=#EBCB8B guibg=none
--   :highlight DiagnosticVirtualTextHint guifg=#88C0D0 guibg=none
--   :highlight DiagnosticVirtualTextInfo guifg=#5E81AC guibg=none
-- ]])

-- cmd'hi MatchParen guibg=NONE'
-- cmd([[
--   augroup MyColors
--     autocmd!
--     autocmd ColorScheme * highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000
--   augroup end
-- ]])
-- cmd'highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000'

