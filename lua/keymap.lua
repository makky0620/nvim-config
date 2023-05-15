local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- split window
keymap('n', '<leader>ss', ':split<Return><C-w>w', opts)
keymap('n', '<leader>sv', ':vsplit<Return><C-w>w', opts)

-- file tree
keymap('n', '<leader>ft', ':Fern . -reveal=% -drawer -toggle -width=40<CR>', opts) 

-- terminal
keymap('n', '<leader>tt', ':ToggleTerm direction=float<Return>', opts)
keymap('t', '<leader>zz', '<C-Bslash><C-n>', opts)
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ 
  cmd = 'lazygit', 
  direction = 'float',
  hidden = true 
})
function _lazygit_toggle()
  lazygit:toggle()
end
keymap("n", "<leader>lg", ":lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

-- find files
keymap('n', '<leader>ff', ":lua require('telescope.builtin').find_files()<CR>", opts)
keymap('n', '<leader>fg', ":lua require('telescope.builtin').live_grep()<CR>", opts)
keymap('n', '<leader>fb', ":lua require('telescope.builtin').buffers()<CR>", opts)
keymap('n', '<leader>fh', ":lua require('telescope.builtin').help_tags()<CR>", opts)

-- buffer
keymap('n', '<C-n>', ':bnext<cr>', opts)
keymap('n', '<C-b>', ':bprev<cr>', opts)
keymap('n', '<leader>dd', '<cmd>bdelete<cr>', opts)

-- GoTo code navigation
keymap('n', '<silent>gd', '(coc-definition)', opts)
keymap('n', '<silent>gy', '(coc-type-definition)', opts)
keymap('n', '<silent>gi', '(coc-implementation)', opts)

