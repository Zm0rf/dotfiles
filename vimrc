"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/zmorf/.vim/bundle/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/zmorf/.vim/bundle/dein.vim')
  call dein#begin('/home/zmorf/.vim/bundle/dein.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/zmorf/.vim/bundle/dein.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')


" Add or remove your Bundles here:
    call dein#add( 'tpope/vim-fugitive')
    call dein#add( 'ctrlpvim/ctrlp.vim')
    call dein#add( 'flazz/vim-colorschemes')

    " Custom Plugins
    call dein#add( 'scrooloose/nerdtree')
    call dein#add( 'ervandew/supertab')
    call dein#add( 'tomtom/checksyntax_vim')
    call dein#add( 'bling/vim-airline')
    call dein#add( 'roman/golden-ratio')
    call dein#add( 'scrooloose/syntastic')
    call dein#add('elixir-lang/vim-elixir')
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell')



  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif


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


map <F4> :! ant -find build.xml debug <CR>
map <F5> :! bash /home/andlun/projects/newAndroidplayer/PLAYportNative/installDebug.sh <CR>


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

" Show whitespaces
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

autocmd BufRead *.java set efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
autocmd BufRead set makeprg=ant\ -find\ build.xml
