" Set sane defaults
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Gruvbox Configuration
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_improved_warnings=1
let g:gruvbox_improved_strings=1
colorscheme gruvbox
set background=dark

" fzf Configuration
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

