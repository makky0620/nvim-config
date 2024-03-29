local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim' -- Common utilities

  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use { 'neoclide/coc.nvim', branch = 'release' } -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'akinsho/toggleterm.nvim'
  use 'f-person/git-blame.nvim'
  use 'vim-test/vim-test'
  use 'goolord/alpha-nvim'
  use 'chrisbra/csv.vim'
  use 'norcalli/nvim-colorizer.lua'
  use {
    'LintaoAmons/scratch.nvim',
  }

  -- File tree
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-git-status.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'

  -- Color schema
  use 'folke/tokyonight.nvim'
  use 'sainnhe/everforest'
  use 'ellisonleao/gruvbox.nvim'

end)
