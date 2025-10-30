vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remove 'Q' keybind
vim.keymap.set('n', 'Q', vim.cmd.nop)

-- Keep cursor in middle of screen when page up/down
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

vim.keymap.set('v', '>', '>gv', { desc = 'Indent block' })
vim.keymap.set('v', '<', '<gv', { desc = 'Unindent block'})
vim.keymap.set('v', '<C-j>', ":m '>+1<cr>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', '<C-k>', ":m '<-2<cr>gv=gv", { desc = 'Move line up' })
vim.keymap.set('n', '<leader>f', 'gg<S-v>G=<C-o>', { desc = 'ormat file' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Copy to system clipboard' })
vim.keymap.set('n', '<leader><leader>x', ':source %<cr>', { desc = 'ource current file' })
vim.keymap.set('n', '<C-l>', ':set hlsearch!<cr><C-l>', { desc = 'oggle search highlighting' })
vim.keymap.set('n', '-', ':Oil<cr>', { desc = 'pen parent directory' })
