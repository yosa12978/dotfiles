return {
    { -- package manager for lsp servers and formatters
        "williamboman/mason.nvim",
        lazy = false,
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            require("mason").setup()
            require "custom.plugins.mason_lsp"
        end
    },
}
