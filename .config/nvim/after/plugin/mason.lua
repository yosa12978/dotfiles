require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls", "rust_analyzer",
        "terraformls", "gitlab_ci_ls",
        "sqlls", "pyright", "buf_ls",
        "marksman", "ts_ls", "html",
        "gopls", "dockerls", "cssls",
        "bashls", "awk_ls", "ansiblels",
    },
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lsp = require("lspconfig")

require("mason-lspconfig").setup_handlers({
    function(server_name)
        lsp[server_name].setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })
    end
})

lsp.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
