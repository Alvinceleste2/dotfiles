-- General keymaps
-- Not including plugin's keymaps

-- Exit terminal mode with <ESC>
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- Move lines arround with ALT + {j,k}
vim.keymap.set('n', '<A-j>', ':m +1<CR>==')
vim.keymap.set('n', '<A-k>', ':m -2<CR>==')
vim.keymap.set('i', '<A-j>', '<ESC>:m .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<ESC>:m .-2<CR>==gi')
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv')

-- Alias akward movement keys
vim.keymap.set('n', 'K', '{')
vim.keymap.set('n', 'J', '}')
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')

-- Easier movement in insert mode
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-l>', '<Right>')

-- Consistency
vim.keymap.set('n', 'Y', 'y$')

-- Surroundig characters in visual mode
vim.keymap.set('v', '<leader>(', 'c()<ESC>P')
vim.keymap.set('v', '<leader>[', 'c[]<ESC>P')
vim.keymap.set('v', '<leader>{', 'c{}<ESC>P')
vim.keymap.set('v', '<leader>"', 'c""<ESC>P')
vim.keymap.set('v', '<leader>\'', 'c\'\'<ESC>P')
vim.keymap.set('v', '<leader>«', 'c«»<ESC>P')

