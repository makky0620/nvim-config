
local keymap = vim.keymap
print('hello world')

keymap.set('n', '<leader>gd', '<Plug>(coc-definition)')
keymap.set('n', '<leader>gi', '<Plug>(coc-implementation)')


