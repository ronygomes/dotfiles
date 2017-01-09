" Use Vim settings, rather than Vi settings
" This must be first as it changes other options
set nocompatible

" Load plugins using Plug
source $HOME/.vim/plug.vim

" Restore default backspace behaviour
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Show invisible whitespace for transparency
" Unable to display 'space' (Requires 7.4.710 onward)
set list listchars=tab:▸\ ,eol:¬,trail:.

" Default tab settings
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Always show line number
set number

" No welcome screen
set shortmess+=I

" Disable arrow keys for faster navigation
" Disables in Normal, Select, Operator Pending, Visual mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disables in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Disables in Command mode
" Use C-n and C-p for command mode history navigation
cnoremap <Up> <Nop>
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
