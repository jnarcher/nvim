return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false, -- WARNING: this plugin does not support lazy-loading
  build = ':TSUpdate',
}
