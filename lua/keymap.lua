local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- split window
keymap('n', '<Leader>ss', ':split<Return><C-w>w', opts)
keymap('n', '<Leader>sv', ':vsplit<Return><C-w>w', opts)

-- file tree
keymap('n', '<Leader>ft', ':Fern . -reveal=% -drawer -toggle -width=40<CR> -show-hidden', opts) 

-- terminal
keymap('n', '<Leader>tt', ':ToggleTerm direction=float<Return>', opts)
keymap('t', '<Esc>', '<C-Bslash><C-n>', opts)

-- find files
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- buffer
vim.keymap.set('n', '<C-n>', '<cmd>bnext<cr>', opts)
vim.keymap.set('n', '<C-b>', '<cmd>bprev<cr>', opts)
vim.keymap.set('n', '<leader>dd', '<cmd>bdelete<cr>', opts)

-- GoTo code navigation
vim.keymap.set('n', '<silent>gd', '(coc-definition)', opts)
vim.keymap.set('n', '<silent>gy', '(coc-type-definition)', opts)
vim.keymap.set('n', '<silent>gi', '(coc-implementation)', opts)
