return require('packer').startup({function()
  use 'wbthomason/packer.nvim'

  -- UI
  use 'navarasu/onedark.nvim'
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
  use 'tpope/vim-surround'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'jose-elias-alvarez/nvim-lsp-ts-utils',
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
