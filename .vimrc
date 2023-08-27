" This combo will list current line number on current
" line and relative on anything else.
set number
set relativenumber
nnoremap <C-l><C-l> :set invrelativenumber<CR>

" tabstop: length of tab
" expandtab: spaces instead of tab
" shiftwidth: length of increment when indenting
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

" show hidden chars
set list
