if executable('g++')
    nnoremap <Leader>c :write <bar> execute '!clear' .
                \ ' && g++ ' . shellescape('%') . ' -o ' . shellescape('%:r:t') . '.out' .
                \ ' && ./' . shellescape('%:r:t') . '.out' .
                \ ' && rm -f ' . shellescape('%:r:t') . '.out'<CR>
endif
