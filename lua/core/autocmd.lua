local cmd = vim.cmd

cmd'set completeopt=menu,menuone,noselect'

cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

cmd([[
  autocmd FileType spectre_panel nnoremap <buffer> <esc> :q!<CR>
]])

