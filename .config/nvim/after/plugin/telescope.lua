local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("grep > ")})
end)

--vim.keymap.set('i', '<C-k>', actions.move_selection_previous)
--vim.keymap.set('i', '<C-j>', actions.move_selection_next)
