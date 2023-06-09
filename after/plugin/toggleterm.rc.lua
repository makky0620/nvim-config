local status, toggleterm = pcall(require, 'toggleterm')
if (not status) then return end;

toggleterm.setup()

local terminal = require 'toggleterm.terminal'.Terminal
local lazygit = terminal:new({
  cmd = 'lazygit',
  direction = 'float',
  hidden = true
})
local lazydocker = terminal:new({
  cmd = 'lazydocker',
  direction = 'float',
  hidden = true
})
local function lazygit_toggle()
  lazygit:toggle()
end
local function lazydocker_toggle()
  lazydocker:toggle()
end



local keymap = vim.keymap
keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<Return>')
keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=100<Return>')
keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<Return>')
keymap.set('n', '<leader>tt', ':ToggleTerm direction=tab<Return>')
keymap.set('n', '<leader>lg', function()
  lazygit_toggle()
end)

keymap.set('n', '<leader>ld', function()
  lazydocker_toggle()
end)
keymap.set('t', '<leader><leader>a', '<C-Bslash><C-n>')
