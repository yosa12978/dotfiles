local null_ls = require("null-ls")

null_ls.setup({
    ft = "go",
    sources = {
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.golines,
        --null_ls.builtins.completion.gopls,
    },
})
