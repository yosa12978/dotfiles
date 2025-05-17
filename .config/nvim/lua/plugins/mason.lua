return {
    { -- package manager for lsp servers and formatters
        "williamboman/mason.nvim",
        lazy = false,
        cmd = { "Mason", "MasonInstall", "MasonUpdate" },
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                    icons = {
                        package_installed = "✓",
                        package_pending = "",
                        package_uninstalled = "✗",
                    },
                },
            })
            require("custom.plugins.mason_lsp")
        end,
    },
}
