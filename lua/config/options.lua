-- Line Number & Cursor Line Highlight
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'

-- Whitespace
vim.opt.list = true
vim.opt.listchars = { tab = '> ', trail = '·', nbsp = '␣' }

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Preview substitutions
vim.opt.inccommand = 'split'

-- Text wrapping
vim.opt.wrap = false

-- Tabstops
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Indenting
vim.opt.breakindent = true
vim.opt.smartindent = true

-- Window splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Save Undo History
vim.opt.undofile = true

-- Set Default Floating Window Border
vim.opt.winborder = 'rounded'

-- Get full terminal colors
vim.opt.termguicolors = true

-- Scroll limits
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

-- Command line height
vim.opt.cmdheight = 1
vim.opt.laststatus = 0

vim.opt.winbar = '%{expand("%:~:.")}%m%='
