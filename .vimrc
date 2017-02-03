" Start Vundle copy and paste
"set nocompatible              " be iMproved, required
"filetype off                  " required
"
"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"
"Plugin 'https://github.com/Valloric/YouCompleteMe.git'
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on
"
"" Brief help
"" :PluginList          - list configured plugins
"" :PluginInstall(!)    - install (update) plugins
"" :PluginSearch(!) foo - search (or refresh cache first) for foo
"" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
"" see :h vundle for more details or wiki for FAQ
"
"" End Vundle copy and paste

set nowrap
set ts=3
set tabstop=3
set shiftwidth=3
set hlsearch
set ignorecase
set smartcase
set nu
set ruler
set cursorline
set autoindent
set smartindent
set noexpandtab
set tags=./tags;
set guifont=Menlo:h14
syntax on

if has("gui_running")
	colorscheme github
endif

map <Esc><Esc> :w<CR>

" Open file at last position
" From: http://stackoverflow.com/q/774560
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif
