-- Custom rules for tex math mode
vim.api.nvim_exec([[ call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'}) ]], false)
vim.api.nvim_exec([[ call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'tex'}) ]], false)
vim.api.nvim_exec([[ call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete':1, 'filetype': 'tex'}) ]], false)

