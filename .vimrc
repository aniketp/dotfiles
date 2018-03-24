if has("syntax")
  syntax on
endif

" A shorhand combination of fileype options
" filetype on
" filetype plugin on
" filetype indent on
filetype plugin indent on

colorscheme badwolf         " Awesome colorscheme

set tabstop=4               " show existing tab with 4 spaces width
set softtabstop=4           " number of spacesin tab while editing
set shiftwidth=4            " when indenting with '>', use 4 spaces width
set expandtab               " On pressing tab, insert 4 spaces
set number                  " Show numbers
set background=dark         " Cool Background

set showcmd                 " show command in the bottom bar
set cursorline              " highlight current line
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only what we need to
set showmatch               " Highlight matching paranthesis

" Searching


" Fix for backspacing issue /if any
set backspace=indent,eol,start

" For editing files requiring root privileges
cmap w!! w !sudo tee % >/dev/null
