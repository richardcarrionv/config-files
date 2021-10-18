" Clipboard del system
set clipboard=unnamedplus

call plug#begin('~/.nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

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

"Ctrl+n para abrir NERDTree
nmap <C-n> :NERDTreeToggle<CR> 
"Para mostrar numero en el editor
set relativenumber

"Resalta mientras buscas con / 
set incsearch

"Resalta todos los matches cuando buscas con / 
set hlsearch
