require("zen-mode").setup({
    window = {
        backdrop = 1,
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

vim.cmd("autocmd VimEnter * hi ZenBg ctermbg=NONE guibg=NONE")
vim.api.nvim_set_keymap('n', '<leader>zm', ':ZenMode<CR>', { noremap = true, silent = true })