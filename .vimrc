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
Plugin 'scrooloose/nerdcommenter'
Plugin 'morhetz/gruvbox'			" Vim colorscheme
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

colorscheme harlequin

set tabstop=8				" show existing tab with 4 spaces width
" set softtabstop=4           " number of spacesin tab while editing
set shiftwidth=8			" when indenting with '>', use 4 spaces width
set noexpandtab				" Use hard tabs instead of soft tabs 
set number relativenumber		" Show numbers
set background=dark			" Cool Background
set cursorline
set mouse=a				" Enable mouse for all modes
set guifont=* 


" Fix for backspacing issue /if any
set backspace=indent,eol,start

let mapleader = ","
imap <F4> <Esc>:w<Enter>:!xelatex resume.tex <Enter>
map <F4> :w<Enter>:!xelatex resume.tex <Enter>

" For editing files requiring root privileges
cmap w!! w !sudo tee % >/dev/null

imap jk <Esc> 
