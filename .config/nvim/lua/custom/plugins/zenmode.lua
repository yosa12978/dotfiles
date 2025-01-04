require("zen-mode").setup({
    window = {
        backdrop = 1,
        height = 0.9,
        width = 80,
        options = {
            signcolumn = "no",
            number = false,
            relativenumber = false,
            foldcolumn = "0",
        },
    },
    plugins = {
        options = {
            enabled = true,
            ruler = false,
            showcmd = false,
            laststatus = 0,
        },
    }
})
vim.api.nvim_set_hl(0, 'ZenBg', { bg = "none" })
vim.api.nvim_set_keymap('n', '<leader>zm', ':ZenMode<CR>', { noremap = true, silent = true })
