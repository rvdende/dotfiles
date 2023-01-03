-- https://github.com/lukas-reineke/indent-blankline.nvim
-- import gitsigns plugin safely
local setup, indent_blankline = pcall(require, 'indent_blankline')
if not setup then
  return
end

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#555555 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#446644 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#444488 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#884444 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
-- vim.opt.listchars:append 'space:⋅'
-- vim.opt.listchars:append 'eol:↴'
-- configure/enable gitsigns
indent_blankline.setup {
  char = '┆', -- ['|', '¦', '┆', '┊']
  show_trailing_blankline_indent = false,
  -- space_char_blankline = ' ',
  char_highlight_list = {
    'IndentBlanklineIndent1',
    'IndentBlanklineIndent2',
    'IndentBlanklineIndent3',
    'IndentBlanklineIndent4',
    --   'IndentBlanklineIndent5',
    --   'IndentBlanklineIndent6',
  },
}
