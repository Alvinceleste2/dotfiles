-- General configuration

vim.g.mapleader = ' '                           -- Space as mapleader
vim.g.maplocalleader = ' '                      -- Space as mapllocalleader

vim.opt.number = true                           -- Show current line number
vim.opt.relativenumber = true                   -- Show distance to near lines
vim.opt.expandtab = true                        -- Auto expand tab
vim.opt.shiftwidth = 2                          -- Default tab size
vim.opt.mouse = "a"                             -- Enable mouse support
vim.opt.so = 5                                  -- Always keep 5 lines shown under/above the cursor
vim.opt.wrap = true                             -- Wrap long lines
vim.opt.cmdheight = 1                           -- Small command window
vim.opt.hidden = true                           -- When off a buffer is unloaded when it is abandoned
vim.opt.backup = false                          -- Don't do backup while saving a file
vim.opt.writebackup = false                     -- Don't do backup while editing a file
vim.opt.updatetime = 300                        -- Time (ms) to write the swap file if nothing is typed
vim.opt.shortmess:append('c')                   -- Don't give ins-completion-menu messages
vim.opt.signcolumn = "yes"                      -- Always draw the sign column
vim.opt.sessionoptions:remove('blank')          -- Closes NERDTree, avoids an error
vim.opt.foldmethod = 'marker'                   -- Automatically identifies folds

