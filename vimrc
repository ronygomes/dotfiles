" Use Vim settings, rather than Vi settings
" This must be first as it changes other options
set nocompatible

" Load plugins using Plug
source $HOME/.vim/plugins.vim

" Default leader key \
let mapleader="\<Space>"
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:user_emmet_leader_key='<C-j>'

" bufferline configuration :help bufferline-statusline
let g:bufferline_echo = 0
autocmd VimEnter * let &statusline='%{bufferline#refresh_status()}'.bufferline#get_status_string()
set laststatus=2

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Restore default backspace behaviour
set backspace=indent,eol,start

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
set hlsearch
set incsearch
set smartcase

set hidden

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

" Clear search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Make jump to mark useable
nnoremap ' `
nnoremap ` '

nnoremap <silent> <Leader>N :<C-u>Explore<CR>
nnoremap <silent> <Leader>n :<C-u>NERDTreeToggle<CR>
