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

local function on_attach(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover({ border = "rounded" })
	end, {})
end

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

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
local servers = require("mason-lspconfig").get_installed_servers()

for _, server_name in ipairs(servers) do
	lsp[server_name].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

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
				["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = "*.gitlab-ci.yml",
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
