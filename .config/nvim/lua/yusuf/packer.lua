vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')
	use({
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	})
	use({ 
		'rose-pine/neovim',
		as = 'rose-pine'
	})
	use('folke/tokyonight.nvim')
	use('nvim-treesitter/nvim-treesitter', {run = ':TsUpdate'})
    use('nvim-treesitter/playground')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('preservim/nerdcommenter')
    use('junegunn/goyo.vim')
    use('tpope/vim-sensible')
end)
