local ignored_filetypes = {
  '.DS_Store',
  '.swp',
}

return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-mini/mini.icons' },
  lazy = false,
  opts = {
    default_file_explorer = true,
    columns = { 
      'icon',
    },
    win_options = {
      wrap = false,
      signcolumn = 'yes',
      foldcolumn = '0',
    },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, _)
        for _, type in ipairs(ignored_filetypes) do
          if name == type then
            return true
          end
        end
        return false
      end,
    },
    sort = {
      { 'type', 'asc' },
      { 'name', 'asc' },
    },
  },
}

