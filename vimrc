let g:BASH_AuthorName   = 'James F Wilkus'
let g:BASH_AuthorRef    = 'jfwilkus'

" let html_use_css

set nocompatible
set backspace=2
set textwidth=0
set nobackup
set esckeys
set tabstop=4
set textwidth=78
set history=50
set ruler
set noerrorbells visualbell
set laststatus=2
set shiftwidth=3
set incsearch
set ignorecase
set nohlsearch
set bg=dark
set magic
set showmatch
set more
set viminfo='20,\"500
set title
set ttyfast
set showmode

syntax on
colorscheme zellner
autocmd BufNewFile,BufRead *.d setf dtrace
filetype plugin on
