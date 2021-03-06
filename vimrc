" Use Vim settings, rather than Vi settings
" This must be first as it changes other options
set nocompatible
set encoding=utf8

" Load plugins using Plug
source $HOME/.vim/plugins.vim

" Default leader key \
let mapleader="\<Space>"
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:user_emmet_leader_key='<C-j>'

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Always hide statusline, ruler
set laststatus=0
set noruler

" Show invisible whitespace for transparency
" Unable to display 'space' (Requires 7.4.710 onward)
set list listchars=tab:▸\ ,eol:¬,trail:.

" Default tab settings
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Always show line number
set number

" No welcome screen
set shortmess+=I

" Enable search highlight, incsearch and smartcase
set hlsearch incsearch ignorecase smartcase
set hidden

" Set default filetype
autocmd BufEnter * if &filetype == "" | setlocal filetype=text | endif

if (v:version > 704) || (v:version == 704 && has('patch399'))
    set cryptmethod=blowfish2
endif

" Clear search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap <silent> <Leader>N :<C-u>Explore<CR>
