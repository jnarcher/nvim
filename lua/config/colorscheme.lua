function SetColorscheme(color)
  color = color or 'catppuccin-mocha'
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#17181c' })
  vim.api.nvim_set_hl(0, 'CursorLineNR', { bold = true, italic = true})
end

SetColorscheme()
