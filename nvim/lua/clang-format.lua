-- Used for formatting C and C++ code
-- clang-format must be installed (clang package in pacman)

function ClangFormat()
  if vim.bo.modified and #vim.fn.findfile('.clang-format', vim.fn.expand('%:p:h') .. ';') > 0 then
    local cursor_pos = vim.fn.getpos('.')
    vim.cmd('%!clang-format')
    vim.fn.setpos('.', cursor_pos)
  end
end

vim.cmd('autocmd BufWritePre *.h,*.hpp,*.c,*.cpp lua ClangFormat()')
