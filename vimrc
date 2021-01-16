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
set nofoldenable       "an attempt to start a document unfolded

"set hidegn "hides beffer instead of closing it? may like this in future

set clipboard=unnamed "make system clipboard a default"

set directory=$HOME/.vim/swapfiles/

" https://vi.stackexchange.com/questions/17073/cursorlinenr-highlight-not-working
if !has('nvim')
  set cursorline
  set cursorlineopt=number
endif

syntax on


call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/ReplaceWithRegister'
Plug 'michaeljsmith/vim-indent-object'

Plug 'kana/vim-textobj-user'   "need this to install 'entire' and 'line
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'preservim/nerdtree'

call plug#end()


nnoremap <C-k> :n<CR>
nnoremap <C-j> :prev<CR>

nnoremap Y y$

nnoremap <C-n> :NERDTreeToggle<CR>

let mapleader = "\<Space>"

nnoremap <leader>tv :bel vert term<CR>

let g:netrw_banner=0      " disable banner
let g:netrw_liststyle=3   " tree view

let g:NERDTreeWinSize = 60
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd FileType help setlocal number   "this does not work when the same file is reopened 
autocmd FileType nerdtree,help setlocal relativenumber


"let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-solarized-dark-kei "this needs to come after 'syntax on'? why

" stop modifying the color scheme file, instead update colors here

hi Directory ctermfg=6
hi CursorLineNr cterm=none ctermfg=7

hi DiffAdd cterm=reverse ctermfg=4
hi DiffDelete cterm=reverse ctermfg=7
hi DiffText cterm=reverse
