" Install vim-plug if not already installed
if empty(glob("~/.vim/autoload/plug.vim"))
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Install plugins using :PlugInstall
Plug 'triglav/vim-visual-increment'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'

call plug#end()
