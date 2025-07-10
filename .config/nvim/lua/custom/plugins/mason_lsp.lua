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
	automatic_enable = {
		exclude = { "lua_ls", "yamlls", "clangd" },
	},
})

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

vim.filetype.add({
	extension = {
		tf = "terraform",
		j2 = "jinja",
	},
})

lsp.terraformls.setup({
	filetypes = { "terraform" },
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
