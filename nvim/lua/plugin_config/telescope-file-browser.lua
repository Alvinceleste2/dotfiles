-- Telescope plugin for file browsing
require('telescope').load_extension 'file_browser'

-- Opens with <space>fv
vim.api.nvim_set_keymap(
  'n',
  '<space>fv',
  ':Telescope file_browser path=%:p:h select_buffer=true<CR>',
  { noremap = true }
)
