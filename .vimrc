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
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'			" Vim colorscheme
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'

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

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

if has("autocmd")
	augroup templates
		autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
		autocmd BufNewFile *.c 0r ~/.vim/templates/skeleton.c
		autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
	augroup END
endif

" Set highlighter for 80 character limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

colorscheme gruvbox

set tabstop=4				" show existing tab with 4 spaces width
" set softtabstop=4           " number of spacesin tab while editing
set shiftwidth=4			" when indenting with '>', use 4 spaces width
set noexpandtab				" Use hard tabs instead of soft tabs 
set number relativenumber		" Show numbers
set background=dark			" Cool Background
set cursorline
set mouse=a				" Enable mouse for all modes
set colorcolumn=80
set guifont=*

" clang-formatting
noremap <C-I> :pyfile /home/aniket/Desktop/clang/tools/clang-format/clang-format.py<cr>
inoremap <C-I> <c-o>:pyfile /home/aniket/Desktop/clang/tools/clang-format/clang-format.py<cr>


" Fix for backspacing issue /if any
set backspace=indent,eol,start

let mapleader = ","
inoremap <F4> <Esc>:w<Enter>:!xelatex resume.tex <Enter>
"inoremap <Enter><Enter> <Esc>:wq<Enter>
noremap <F4> :w<Enter>:!xelatex resume.tex <Enter>
noremap <Enter><Enter> <Esc>:wq<Enter>
noremap <C-n> :NERDTreeToggle<CR>

" For editing files requiring root privileges
cmap w!! w !sudo tee % >/dev/null

imap jk <Esc> 
