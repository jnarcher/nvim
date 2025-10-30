vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local function map(modes, keymap, action, description)
  vim.keymap.set(modes, keymap, action, { desc = description })
end

-- Remove `Q` keybind
map('n', 'Q', vim.cmd.nop)

-- Keep selection when indenting blocks
map('v', '>', '>gv')
map('v', '<', '<gv')

-- Keep cursor in middle of screen when page up/down
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')

map('v', '<C-j>', ":m '>+1<cr>gv=gv", 'Move line down')
map('v', '<C-k>', ":m '<-2<cr>gv=gv", 'Move line up')

map('n', '<leader>f', 'gg<S-v>G=<C-o>', 'Format file')

map('v', '<leader>y', '"+y', 'Copy to system clipboard')

map('n', '<leader><leader>x', ':source %<cr>', 'Source current file')

map('n', '<C-l>', ':set hlsearch!<cr><C-l>', 'Toggle search highlighting')

map('n', '-', ':Oil<cr>', 'Open parent directory')
