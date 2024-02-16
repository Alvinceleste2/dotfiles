-- vimtex settings
-- Opens the preview with <super>ll
vim.g.tex_flavor = 'latex'
vim.g.tex_conceal = ''
vim.g.vimtex_fold_manual = 1
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_view_method = 'general'
vim.g.vimtex_compiler_latexmk = {
  build_dir = '',
  callback = 1,
  continuous = 1,
  executable = 'latexmk',
  hooks = {},
  options = {
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
    '-shell-escape',
  },
}

vim.g.vimtex_view_general_viewer = 'qpdfview'
vim.g.vimtex_view_general_options = '--unique @pdf\\#src:@tex:@line:@col'
vim.g.vimtex_quickfix_ignore_filters = {
  'Underfull \\hbox (badness [0-9]*) in paragraph at lines',
  'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in paragraph at lines',
  'Underfull \\hbox (badness [0-9]*) in ',
  'Overfull \\hbox ([0-9]*.[0-9]*pttoo wide) in ',
}

