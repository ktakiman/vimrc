set nocompatible

"Vundle setup START -------------------- 

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'

Plugin 'vim-scripts/ReplaceWithRegister'
"Plugin 'vim-scripts/camelcasemotion'

Plugin 'michaeljsmith/vim-indent-object'

Plugin 'kana/vim-textobj-user'   "need this to install 'entire' and 'line
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-line'

Plugin 'preservim/nerdtree'

"installing 'rename' plug-in isn't working, why?????
"Plugin 'ddanro/rename.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Vundle setup END -------------------- 

set hidden

set number
set relativenumber

set nowrap
set showcmd

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set listchars=tab:▸\ ,eol:¬

set scrolloff=5

set wildmenu
set path+=** "cannot get 'find' command to open a file (it finds the file...)
set title  "terminal title text reflects the current buffer

set incsearch
set hlsearch
set ignorecase
set smartcase  "do case-sensitive search if search word contains uppercase letter (still need ignorecase turned on)

set foldmethod=indent
"set hidegn "hides beffer instead of closing it? may like this in future

set clipboard=unnamed "make system clipboard a default"

set directory=$HOME/.vim/swapfiles/

syntax on

"let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-solarized-dark-kei "this needs to come after 'syntax on'? why

nnoremap <C-k> :n<CR>
nnoremap <C-j> :prev<CR>

nnoremap <S-Right> <C-w>l
nnoremap <S-Left> <C-w>h
nnoremap <S-Up> <C-w>k
nnoremap <S-Down> <C-w>j

nnoremap <C-Right> <C-w>>
nnoremap <C-Left> <C-w><
nnoremap <C-Up> <C-w>-
nnoremap <C-Down> <C-w>+

nnoremap Y y$
nnoremap <Space> <C-d>zz
nnoremap <S-Space> <C-u>zz

nnoremap <C-n> :NERDTreeToggle<CR>

inoremap <C-b> {<CR>}<Esc>O<Tab>

let g:netrw_banner=0      " disable banner
let g:netrw_liststyle=3   " tree view

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
