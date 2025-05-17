local map = vim.keymap.set

map("n", "<leader>pv", "<cmd>:Ex<CR>", { desc = "go to file explorer" })
map("n", "<leader>qq", "<cmd>:q<CR>", { desc = "quit" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })
map("n", "<leader>e", function()
	vim.diagnostic.open_float(0, { scope = "line", border = "rounded" })
end, { desc = "open line diagnostics" })

map("n", "<leader>rn", vim.lsp.buf.rename, {})
map("n", "<leader>ca", vim.lsp.buf.code_action, {})
map("n", "<leader>gd", vim.lsp.buf.definition, {})
map("n", "<leader>gi", vim.lsp.buf.implementation, {})
map("n", "K", function()
	vim.lsp.buf.hover({ border = "rounded" })
end, {})
