if v:version < 802
      packadd! dracula
endif
syntax enable
colorscheme dracula

syntax on

set nocompatible
filetype plugin on
filetype indent on

set number "" sets numbers on side of screen
set relativenumber ""sets number relative to current line

set cursorline
set cursorcolumn

filetype on
set tabstop=2
set shiftwidth=2
set expandtab
set nobackup
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=100
set splitbelow
set foldmethod=syntax
set splitright
let python_highlight_all=1

" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
  
  Plug 'preservim/nerdtree'
  Plug 'vim-syntastic/syntastic'
  Plug 'pangloss/vim-javascript'
  Plug 'preservim/vim-markdown'
  Plug 'vimwiki/vimwiki'

call plug#end()

let wiki_1 = {}
let wiki_1.path = '~/vimwiki'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let g:vimwiki_list = [wiki_1]


" }}}
" MAPPINGS --------------------------------------------------------------- {{{
" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>
" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" COMMANDS------------------------------------
command! T :put =strftime(\"%T\")
command! D :put =strftime(\"%Y-%m-%d\")


" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
" }}}
