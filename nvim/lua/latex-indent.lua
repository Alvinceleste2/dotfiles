-- Used for formatting LaTeX code
-- latexindent must be installed (texlive-binextra package in pacman)

function LatexIndent()
  if vim.bo.modified then
    local cursor_pos = vim.fn.getpos('.')
    vim.cmd('%!latexindent -y="defaultIndent:\'  \'"')
    vim.fn.setpos('.', cursor_pos)
  end
end

vim.cmd('autocmd BufWritePre *.tex lua LatexIndent()')
