require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "terraformls",
        "yamlls",
        "sqlls",
        "pyright",
        "buf_ls",
        "marksman",
        "eslint",
        "html",
        "gopls",
        "dockerls",
        "docker_compose_language_service",
        "cssls",
        "bashls",
        "awk_ls",
        "ansiblels",
        "jinja_lsp",
        "clangd",
    },
})

local border = {
    { "╭", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╮", "FloatBorder" },
    { "│", "FloatBorder" },
    { "╯", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╰", "FloatBorder" },
    { "│", "FloatBorder" },
}

-- LSP settings (for overriding per client)
local handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

local on_attach = function(_, _)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

vim.filetype.add({
    filename = {
        [".gitlab-ci.yml"] = "yaml.gitlab",
    },
    pattern = {
        [".*/ansible/.*%.yaml"] = "yaml.ansible",
        [".*/ansible/.*%.yml"] = "yaml.ansible",
    },
})

local lsp = require("lspconfig")

require("mason-lspconfig").setup_handlers({
    function(server_name)
        lsp[server_name].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })
    end,
})

lsp.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

lsp.yamlls.setup({
    cmd = { "yaml-language-server", "--stdio" },
    settings = {
        yaml = {
            schemaStore = {
                enable = false,
            },
            schemas = {
                ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] =
                "*.gitlab-ci.yml",
            },
        },
    },
    filetypes = { "yaml.gitlab" },
})

lsp.clangd.setup({
    cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
    init_options = {
        fallbackFlags = { "-std=c++17" },
    },
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
vim.cmd("hi NormalFloat guibg=#101421")
