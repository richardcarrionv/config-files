" Clipboard del system
set clipboard=unnamedplus

so ~/config-files/.vim/plugins.vim
so ~/config-files/.vim/plugins-configs.vim
so ~/config-files/.vim/maps.vim

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd Filetype tex setl updatetime=1

"Mostrar numero de linea
set number

"Mejores colores
set termguicolors

"Identar con 4 espacios no tabuladores pro" 
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Color
colorscheme gruvbox


"Para mostrar numero en el editor
set relativenumber

"Resalta mientras buscas con / 
set incsearch

"Resalta todos los matches cuando buscas con / 
set hlsearch

"Abre los splits a la derecha y no a la izquierda
set splitright

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
"set nobackup
"set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH


