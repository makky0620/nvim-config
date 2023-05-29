vim.g['fern#renderer'] = 'nerdfont'

local keymap = vim.keymap
keymap.set('n', '<leader>ft', ':Fern . -reveal=% -drawer -toggle -width=40<CR>')

