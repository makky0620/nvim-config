local status, coc = pcall(require, 'coc')
if (not status) then return end

local keymap = vim.keymap

keymap.set('n', 'gd', '<Plug>(coc-definition)')


