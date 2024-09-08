vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	use {
	    "williamboman/mason.nvim"
	}
  use {
    "nvim-treesitter/nvim-treesitter"
  }
end)
