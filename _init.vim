"dein Scripts-----------------------------
if &compatible
  set nocompatible 
endif

" Required:
set runtimepath+=/Users/makinotakashi/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/makinotakshi/.config/nvim/dein')
  call dein#begin('/Users/makinotakashi/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/makinotakashi/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " dein begin
  call dein#begin($HOME . '/.config/nvim/dein')

  " Load toml files
  let s:toml_dir  = $HOME . '/.config/nvim/toml' 
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set number
set clipboard+=unnamed
