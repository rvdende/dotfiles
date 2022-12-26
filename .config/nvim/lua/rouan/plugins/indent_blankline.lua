-- import gitsigns plugin safely
local setup, indent_blankline = pcall(require, 'indent_blankline')
if not setup then
  return
end

-- configure/enable gitsigns
indent_blankline.setup {
  char = '┊',
  show_trailing_blankline_indent = false,
}
