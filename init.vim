" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'frazrepo/vim-rainbow'
Plug 'chrisbra/Colorizer'
Plug 'dylanaraps/wal.vim'
Plug 'vimwiki/vimwiki'
Plug 'airblade/vim-gitgutter'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'airblade/vim-gitgutter'
Plug 'lervag/vimtex'
Plug 'kelwin/vim-smali'
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
"Deoplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"Update time for git gutter
set updatetime=100

"Clippboard
set clipboard=unnamed

"vimWiki
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
"Coloscheme
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

"LaTeX
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

"Keymaps
:let mapleader = ","

nnoremap <leader>n :NERDTreeToggle <ENTER>
nnoremap <leader>c :ColorHighlight <ENTER>
nnoremap <leader>s :source ~/.config/nvim/init.vim <ENTER>
nnoremap ö $

nnoremap <leader>C :tabe ~/.config/nvim/init.vim <ENTER>
nnoremap <Leader>g :! git add . && git commit -m "Hampus" && git push<CR>

nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
inoremap <leader>j <Esc>:m .+1<CR>==gi
inoremap <leader>k <Esc>:m .-2<CR>==gi
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv
