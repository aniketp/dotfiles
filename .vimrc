if has("syntax")
  syntax on
endif

filetype plugin indent on

set tabstop=4				" show existing tab with 4 spaces width
set shiftwidth=4			" when indenting with '>', use 4 spaces width
set expandtab				" On pressing tab, insert 4 spaces
set number				    " Show numbers
set background=dark			" Cool Background

" Fix for backspacing issue /if any
set backspace=indent,eol,start
