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
        lazy = false,
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
    { -- package manager for lsp servers and formatters
        "williamboman/mason.nvim",
        lazy = false,
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            require("mason").setup()
            require "plugins.mason_lsp"
        end
    },
    { -- completion
        "hrsh7th/nvim-cmp",
        lazy = false,
        priority = 100,
        dependencies = {
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            {
                "L3MON4D3/LuaSnip",
                build = "make install_jsregexp",
                dependencies = {
                    "rafamadriz/friendly-snippets",
                }
            },
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
            require "plugins.cmp"
        end
    },
    {
        "nvimtools/none-ls.nvim",
        lazy = false,
        dependencies = {
            "mason.nvim"
        },
        config = function()
            require "plugins.null_ls"
        end
    }
}
