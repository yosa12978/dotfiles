vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')

    use({
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	})

	use('folke/tokyonight.nvim')

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('preservim/nerdcommenter')

    use('tpope/vim-sensible')

    use ({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")
    use("rafamadriz/friendly-snippets")

    use("nvimtools/none-ls.nvim")

    use("folke/zen-mode.nvim")
end)
