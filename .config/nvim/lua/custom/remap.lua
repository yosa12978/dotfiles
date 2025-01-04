--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {})
--vim.keymap.set("n", "<leader>qq", vim.cmd.q, {})

vim.api.nvim_set_keymap("n", "<leader>pv", "<cmd>:Ex<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>qq", "<cmd>:q<CR>", {})
