-- set leader key to space
vim.g.mapleader = '\\'

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set('i', 'jk', '<ESC>')

-- clear search highlights
keymap.set('n', '<leader>nh', ':nohl<CR>')

-- delete single character without copying into register
keymap.set('n', 'x', '"_x')

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>') -- increment
keymap.set('n', '<leader>-', '<C-x>') -- decrement

-- window management
keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=') -- make split windows equal width & height
keymap.set('n', '<leader>sx', ':close<CR>') -- close current split window

keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close current tab
keymap.set('n', '<leader>tn', ':tabn<CR>') --  go to next tab
keymap.set('n', '<leader>tp', ':tabp<CR>') --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

--- nvim mind
keymap.set({ 'n', 'i', 'v' }, '<leader>M', ':MindOpenMain<CR>')
keymap.set({ 'n', 'i', 'v' }, '<leader>m', ':MindOpenSmartProject<CR>')

-- vim-maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>') -- toggle split window maximization

-- nvim-tree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>') -- toggle file explorer
keymap.set('n', '<F4>', ':NvimTreeToggle<CR>') -- toggle file explorer
-- telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>') -- find files within current working directory, respects .gitignore
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>') -- find string in current working directory as you type
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>') -- find string under cursor in current working directory
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>') -- list open buffers in current neovim instance
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>') -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits<cr>') -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set('n', '<leader>gfc', '<cmd>Telescope git_bcommits<cr>') -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set('n', '<leader>gb', '<cmd>Telescope git_branches<cr>') -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<cr>') -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set('n', '<leader>rs', ':LspRestart<CR>') -- mapping to restart lsp if necessary

-- START LAZYGIT

-- open lazygit in lspsaga float terminal
-- keymap.set('n', '<M-g>', '<cmd>Lspsaga open_floaterm lazygit<CR>', { silent = true })
-- close floaterm
-- keymap.set('t', '<M-g>', [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })

-- open lazygit in lspsaga float terminal
keymap.set('n', '<leader>git', ':FloatermNew --name=lazygit --disposable lazygit<CR>')
keymap.set({ 'n', 'i', 'v' }, '<F5>', '<ESC>:wa<CR>:FloatermNew --name=lazygit --disposable lazygit<CR>')

-- close floaterm
-- keymap.set('t', '<M-g>', ':FloatermKill lazygit')

keymap.set({ 'i', 'v', 'n' }, '<C-s>', '<Esc>:wa<CR>')
keymap.set({ 'i', 'v', 'n' }, '<M-s>', '<Esc>:wa<CR>')
keymap.set({ 'i', 'v', 'n' }, '<F1>', '<Esc>:wa<CR>')
keymap.set({ 'i', 'v', 'n' }, '<F12>', '<Esc>:help<CR>')

keymap.set('n', 'u', ':undo<CR>') -- undo
keymap.set('n', '<C-r>', ':redo<CR>') -- redo
keymap.set('n', 'U', ':redo<CR>') -- redo

-- barbar tabs
-- https://github.com/romgrk/barbar.nvim
keymap.set('n', '<leader>x', ':BufferClose<CR>')
keymap.set('n', '<leader>1', ':BufferGoto 1<CR>')
keymap.set('n', '<leader>2', ':BufferGoto 2<CR>')
keymap.set('n', '<leader>3', ':BufferGoto 3<CR>')
keymap.set('n', '<leader>4', ':BufferGoto 4<CR>')
keymap.set('n', '<leader>5', ':BufferGoto 5<CR>')
keymap.set('n', '<leader>6', ':BufferGoto 6<CR>')
keymap.set('n', '<leader>7', ':BufferGoto 7<CR>')
keymap.set('n', '<leader>8', ':BufferGoto 8<CR>')
keymap.set('n', '<leader>9', ':BufferGoto 9<CR>')

-- fix up down for wrapped lines
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
