
" Syntax highlighting
syntax on
" Row numbers
set number

" 4 space indent
set smartindent
set tabstop=4
set shiftwidth=4
" set expandtab

" PHP autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


" swap file directory
set dir=~/.vimswap


set list!
set listchars=tab:>-

" Navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
