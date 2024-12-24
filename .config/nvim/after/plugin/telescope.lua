local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local telescope = require('telescope')

telescope.setup({
    pickers = {
        find_files = {
            hidden = true,
        },
    },
    defaults = {
        file_ignore_patterns = {
            "node_modules", "build", "dist", "yarn.lock", ".git", ".vscode"
        },
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

