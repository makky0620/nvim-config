local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-repeat'
  use 'nvim-tree/nvim-web-devicons'
  use {'nvim-treesitter/nvim-treesitter'}
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'akinsho/bufferline.nvim', tag = "v3.*"}
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
    end
  }

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- startup screen
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }
    ---- testing
  use {'vim-test/vim-test', config = function()
    vim.cmd('let test#strategy = "neovim"')
    vim.cmd('let test#python#runner = "pytest"')
    end
  }

  ---- color scheme
  use 'EdenEast/nightfox.nvim'
  use 'folke/tokyonight.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })

  ---- LSP
  use {
    'neoclide/coc.nvim',
    branch = "release"
  }

  ---- git
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup()
    end
  }

  -- file tree
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-git-status.vim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

