call plug#begin('~/.nvim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'alvan/vim-closetag'
    Plug 'jiangmiao/auto-pairs'
    Plug 'rakr/vim-one'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-surround'
    Plug 'lervag/vimtex'
    Plug 'preservim/nerdcommenter'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'tpope/vim-fugitive'
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    "Plug 'kyazdani42/nvim-web-devicons'
    "Plug 'romgrk/barbar.nvim'
    Plug 'gcmt/taboo.vim'
call plug#end()


