-- GDB frontend for nvim
  -- Define the function
function NvimGdbNoTKeymaps()
 vim.api.nvim_set_keymap('t', '<esc>', '<c-\\><c-n>', {silent = true})
end

-- Define the global variable
vim.g.nvimgdb_config_override = {
 key_next = 'n',
 key_step = 's',
 key_finish = 'f',
 key_continue = 'c',
 key_until = 'u',
 key_breakpoint = 'b',
 set_tkeymaps = NvimGdbNoTKeymaps,
}

-- Obsolete:
-- change $HOME/.local/share/nvim/plugged/nvim-gdb line 53:
-- nnoremap <leader>dd :GdbStart gdb -q --args

