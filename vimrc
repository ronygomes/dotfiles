" Use Vim settings, rather than Vi settings
" This must be first as it changes other options
set nocompatible

" Load plugins using Plug
source $HOME/.vim/plugins.vim

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

" Format JS code, Node and js-beautify needed to be installed
autocmd FileType javascript setlocal equalprg=js-beautify\ --stdin

" Save/Load cursor position of file
" Default view directory is .vim/view
" :help viewdir
" Added only for js, Need to add for other format
autocmd BufWinLeave *.js mkview
autocmd BufWinEnter *.js silent loadview

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

" Enable incremental search and highlight
set hlsearch
set incsearch

" Clear search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
