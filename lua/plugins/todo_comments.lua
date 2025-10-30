return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = false,
    gui_style = {
      fg = "BOLD",
      bg = "NONE",
    },
    highlight = {
      before = "",
      keyword = "fg",
      after = "",
      pattern = [[\s(KEYWORDS)]],
    },
  },
}
