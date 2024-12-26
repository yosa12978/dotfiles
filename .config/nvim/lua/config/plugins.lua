return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require "plugins.telescope"
        end
    },
    {
        "folke/zen-mode.nvim",
        opts = {},
        config = function()
            require "plugins.zenmode"
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require "plugins.treesitter"
        end
    },
    {
        "tpope/vim-sensible",
    },
    {
        "mbbill/undotree",
        config = function()
            require "plugins.undotree"
        end
    },
    {
        "tpope/vim-fugitive",
        config = function()
            require "plugins.fugitive"
        end
    },
    {
        "preservim/nerdcommenter",
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "rafamadriz/friendly-snippets",
        dependencies = {
            "mason.nvim",
        },
    },
    {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim", "cmp-nvim-lsp" },
        config = function()
            require "plugins.mason_lsp" 
            require "plugins.cmp"
        end
    },
}
