local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	ft = "go",
	sources = {
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.goimports,
		null_ls.builtins.formatting.golines,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.buf,
		null_ls.builtins.formatting.terraform_fmt,
		null_ls.builtins.formatting.opentofu_fmt,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.shfmt,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
