call plug#begin('/home/exce/.local/share/nvim/site/autoload/')

Plug 'drewtempelmeyer/palenight.vim'
Plug 'tpope/vim-sensible'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
set clipboard=unnamedplus
set mouse=a
set background=dark
colorscheme palenight
