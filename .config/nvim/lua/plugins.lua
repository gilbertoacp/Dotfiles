local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Nvim Tree
  use 'kyazdani42/nvim-tree.lua'
  -- Native LSP
  use 'neovim/nvim-lspconfig'
    
  use 'romgrk/barbar.nvim'
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main'
  }
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'nvim-treesitter/nvim-treesitter'
  use 'joshdick/onedark.vim'


end)
