set nowrap
set ts=4 "tabstop
set sw=4 "shiftwidth
set expandtab
set hlsearch
set ignorecase
set smartcase
set nu "number
set ruler
set cursorline
set autoindent
set smartindent
set tags=./tags;
set guifont=Menlo:h14
set scrolloff=5
syntax on

map <Esc><Esc> :w<CR>
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
map <Leader>l :GetCurrentBranchLink<CR>

" Open file at last position
" From: http://stackoverflow.com/q/774560
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif

" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'rafi/awesome-vim-colorschemes'
Plug 'davidhalter/jedi-vim'
Plug 'zivyangll/git-blame.vim'
Plug 'knsh14/vim-github-link'

" Initialize plugin system
call plug#end()

"colorscheme jellybeans
colorscheme iceberg
