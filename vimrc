"NeoBundle Scripts-----------------------------
if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif

	" Required:
	set runtimepath+=/home/andlun/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/andlun/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell'


" Custom Plugins
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ervandew/supertab'
NeoBundle 'tomtom/checksyntax_vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'roman/golden-ratio'
"NeoBundle 'java_getset.vim'
NeoBundle 'scrooloose/syntastic'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" Syntax highlighting
syntax on
colorscheme burnttoast256
hi Normal ctermbg=none
" Row numbers
set number

" 4 space indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Show current line
set cursorline


" Enable wildmenu
set wildmenu

" Wrap long lines
set nowrap


" PHP autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


" swap file directory
set dir=~/.vimswap


" Search highlight
set hlsearch


set list!
set listchars=tab:>-

" Navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


map <F2> :! bash /home/andlun/projects/newAndroidplayer/dev_scripts/build_all_projects.sh && bash /home/andlun/projects/newAndroidplayer/dev_scripts/install_all_apps.sh <CR>
map <F3> :! bash /home/andlun/projects/newAndroidplayer/dev_scripts/build_media_unit.sh && bash /home/andlun/projects/newAndroidplayer/dev_scripts/install_media_unit.sh <CR>
map <F4> :! bash /home/andlun/projects/newAndroidplayer/PLAYportNative/compile.sh <CR>
map <F5> :! bash /home/andlun/projects/newAndroidplayer/dev_scripts/build_media_unit_old.sh && bash /home/andlun/projects/newAndroidplayer/dev_scripts/install_media_unit_old.sh <CR>


" Reload vimrc on save
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
	augroup END " }


" Enable mouse interaction
set mouse=a

" Move over screen lines insted of text lines
nnoremap j gj
nnoremap k gk

" Text width
" set tw=79
"set formatoptions+=t
set wrap linebreak nolist

" NERDTree
	map <C-n> :NERDTreeToggle<CR>
    " au VimEnter * NERDTree
    let NERDTreeQuitOnOpen=1
" airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2



" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
