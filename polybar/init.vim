" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'chrisbra/Colorizer'
Plug 'dylanaraps/wal.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Initialize plugin system
call plug#end()


colorscheme wal

" Lightline 
set laststatus=2
set noshowmode

" Vim-Rainbow
let g:rainbow_active = 1

" let g:airline_theme='serene'
let g:airline_powerline_fonts = 1
set nu
set rnu

:let mapleader = ","

:nnoremap <leader>n :NERDTreeToggle <ENTER>
:nnoremap <leader>c :ColorHighlight <ENTER>

:nnoremap ö $
