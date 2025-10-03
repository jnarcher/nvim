-- lsp

vim.lsp.enable('lua_ls')

function apply_completion_opts(client, ev)
    vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
    vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    vim.keymap.set('i', '<C-Space>', function()
      vim.lsp.completion.get()
    end)
end

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
      apply_completion_opts(client, ev)
    end
  end
})

vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  }
})
