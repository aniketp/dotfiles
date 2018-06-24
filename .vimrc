set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'morhetz/gruvbox'			" Vim colorscheme

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if has("syntax")
  syntax on
endif

" A shorhand combination of fileype options
" filetype on
" filetype plugin on
" filetype indent on
filetype plugin indent on

colorscheme afterglow 

set tabstop=4				" show existing tab with 4 spaces width
" set softtabstop=4           " number of spacesin tab while editing
set shiftwidth=4			" when indenting with '>', use 4 spaces width
set noexpandtab				" On pressing tab, insert 4 spaces
set number				    " Show numbers
set background=dark			" Cool Background

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

imap jk <Esc> 
