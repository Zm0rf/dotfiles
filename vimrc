"NeoBundle Scripts-----------------------------
if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif

	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

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
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }


" Custom Plugins
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ervandew/supertab'
NeoBundle 'tomtom/checksyntax_vim'
NeoBundle 'bling/vim-airline'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" Syntax highlighting
syntax on
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


augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
	augroup END " }


set mouse=a

nnoremap j gj
nnoremap k gk

" NERDTree
	map <C-n> :NERDTreeToggle<CR>
    au VimEnter * NERDTree
" airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
