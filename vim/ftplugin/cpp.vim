if executable('g++')
    nnoremap <buffer> <Leader>c :write <bar> execute '!clear' .
                \ ' && g++ ' . shellescape(expand('%')) . ' -o ' . shellescape(expand('%:r')) . '.out' .
                \ ' && ./' . shellescape(expand('%:r')) . '.out' .
                \ ' && rm -f ' . shellescape(expand('%:r')) . '.out'<CR>
endif
