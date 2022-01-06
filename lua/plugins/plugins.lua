return require('packer').startup({function()
  use 'wbthomason/packer.nvim'

  -- UI
  use 'navarasu/onedark.nvim'
  use 'onsails/lspkind-nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- IDE
  use 'lukas-reineke/indent-blankline.nvim'
  use 'ray-x/lsp_signature.nvim'
  use 'tami5/lspsaga.nvim'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'terrortylor/nvim-comment'
  use 'windwp/nvim-ts-autotag'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'ahmedkhalf/project.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'folke/which-key.nvim'
  use 'tpope/vim-surround'
  use 'RRethy/vim-illuminate'
  use 'filipdutescu/renamer.nvim'
  use 'bkad/CamelCaseMotion'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'jose-elias-alvarez/nvim-lsp-ts-utils',
    requires = 'nvim-lua/plenary.nvim'
  }
  use {
    "folke/todo-comments.nvim",
    requires = 'nvim-lua/plenary.nvim',
  }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  use {
    'VonHeikemen/searchbox.nvim',
    requires = 'MunifTanjim/nui.nvim'
  }

  -- Intellisense
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'

  -- Snippets
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'dsznajder/vscode-es7-javascript-react-snippets'

  -- git
  use 'kdheepak/lazygit.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
end, 
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
