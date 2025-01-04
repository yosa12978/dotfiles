return {
    {
        "nvimtools/none-ls.nvim",
        lazy = false,
        dependencies = {
            "mason.nvim"
        },
        config = function()
            require "custom.plugins.null_ls"
        end
    },
}
