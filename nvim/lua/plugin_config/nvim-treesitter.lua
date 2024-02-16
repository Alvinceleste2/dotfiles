-- Syntax highlighting
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { 'c', 'lua', 'rust', 'ruby', 'vim', 'python', 'latex' },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    disable = { 'ini', 'sql'},
  },
}
