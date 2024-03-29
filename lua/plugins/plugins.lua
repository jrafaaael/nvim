local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup({ function(use)
  use 'wbthomason/packer.nvim'

  -- Utils
  use 'nvim-lua/plenary.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use "jayp0521/mason-null-ls.nvim"
  use "jayp0521/mason-nvim-dap.nvim"


  -- UI
  use 'navarasu/onedark.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'feline-nvim/feline.nvim'
  use 'rcarriga/nvim-dap-ui'
  use 'zbirenbaum/neodim'
  use 'onsails/lspkind.nvim'
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*"
  }
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
  })

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Intellisense
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use {
    'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'npm install --frozen-lockfile && npm compile'
  }

  -- IDE
  use 'kyazdani42/nvim-tree.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'windwp/nvim-autopairs'
  use 'NvChad/nvim-colorizer.lua'
  use 'windwp/nvim-ts-autotag'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'terrortylor/nvim-comment'
  use 'machakann/vim-sandwich'
  use 'ray-x/lsp_signature.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'folke/trouble.nvim'
  -- use 'windwp/nvim-spectre'
  use 'mfussenegger/nvim-dap'
  use {
    'akinsho/toggleterm.nvim',
    -- tag = 'v1.*'
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'VonHeikemen/searchbox.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }
  use({
    "olimorris/persisted.nvim",
  })

  -- Language specific
  use 'jose-elias-alvarez/typescript.nvim'
  use 'mfussenegger/nvim-dap-python'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'kdheepak/lazygit.nvim'
  use {
    'akinsho/git-conflict.nvim',
    tag = "*"
  }

  -- Fuzzy finder
  use 'nvim-telescope/telescope.nvim'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  -- Misc
  use 'phaazon/hop.nvim'
  use 'folke/which-key.nvim'
  use 'ellisonleao/glow.nvim'
  use 'mbbill/undotree'

  if packer_bootstrap then
    require('packer').sync()
  end
end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end
    }
  }
})

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
