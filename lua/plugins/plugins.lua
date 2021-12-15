return require('packer').startup({function()
  use 'wbthomason/packer.nvim'

end, 
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
