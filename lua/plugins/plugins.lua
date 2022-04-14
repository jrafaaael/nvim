return require('packer').startup({function()
  use 'wbthomason/packer.nvim'

  -- Utils
  use 'nvim-lua/plenary.nvim'

  -- UI
  use 'rebelot/kanagawa.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'feline-nvim/feline.nvim'
  use 'akinsho/bufferline.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
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
  use 'akinsho/toggleterm.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'windwp/nvim-ts-autotag'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'terrortylor/nvim-comment'
  use 'machakann/vim-sandwich'
  use 'ray-x/lsp_signature.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'folke/trouble.nvim'
  use 'nvim-pack/nvim-spectre'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'VonHeikemen/searchbox.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }

  -- Language specific
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'kdheepak/lazygit.nvim'

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
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end
  }
}})
