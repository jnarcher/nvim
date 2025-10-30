local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>ss', builtin.live_grep, { desc =  '[S]earch [S]ymbols' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc =  'Search Git Files' })
