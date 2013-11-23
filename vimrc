"-- vundle setting --
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/winmanager'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on     " required!

"-- bufexplorer setting --
let g:bufExplorerDefaultHelp=1       " Show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.

"-- winmanager setting --
let g:AutoOpenWinManager=1
let g:winManagerWidth=30
let g:winManagerWindowLayout="NERDTree|TagList"

nmap wm :WMToggle<CR>

"-- neocomplcache setting --
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_cursor_hold_i = 1

"-- nerdtree setting --
let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"-- vim setting --
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shortmess=atI
set t_Co=256
set nu
set guifont=Courier_New:h10:cANSI
syntax on
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set ruler
set showcmd
set novisualbell 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set laststatus=1
set foldenable
set foldmethod=manual
set nocompatible
if version >= 603
    set encoding=utf-8
endif
