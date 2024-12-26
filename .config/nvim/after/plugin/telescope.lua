local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require('telescope').setup({
    pickers = {
        find_files = {
            find_command = {
                "rg",
                "--files",
                "--follow",
                "--no-ignore-vcs",
                "--hidden",
                "-g",
                "!{node_modules/*,.git/*,.wine/*,.vscode/*}",
            },
        },
    },
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-l>"] = actions.select_default,
                ["<esc>"] = actions.close
            }
        }
    }
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("grep > ")})
end)

