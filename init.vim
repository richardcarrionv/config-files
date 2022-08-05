" Clipboard del system
set clipboard=unnamedplus
"Mostrar numero de linea
set number
"Mejores colores
set termguicolors

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

"Identar con 4 espacios no tabuladores pro" 
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Highlight pairs
set showmatch


so ~/config-files/.vim/plugins.vim
so ~/config-files/.vim/plugins-configs.vim
"so ~/config-files/.vim/maps.vim

" Start NERDTree when Vim is started without file 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


let g:gruvbox_contrast_dark = "hard"

let g:gruvbox_termcolors = "256"

noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

colorscheme gruvbox

let g:airline_theme='base16_gruvbox_dark_hard'

let g:airline#extensions#tabline#formatter = 'jsformatter'

let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

let NERDTreeSortOrder=['[[extension]]']

let g:python_highlight_space_errors=0

"----------------------------------------------MAPPINGS-----------------------------------------------------

"nnoremap <SPACE> <nop>
"Leader mapped
let mapleader = " "

nnoremap <leader><Enter> o<Esc>
nnoremap <leader>fm <cmd>CocCommand prettier.forceFormatDocument<cr>

nnoremap <silent> <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <expr> <Leader>gf (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":GFiles\<cr>"
nnoremap <silent> <expr> <Leader>ag (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Ag\<cr>"
nnoremap <silent> <expr> <Leader>bf (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Buffers\<cr>"
nnoremap <silent> <expr> <Leader>dg (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":CocDiagnostics\<cr>"
nnoremap <leader>ch <cmd>:History:<cr>

nnoremap <silent> <expr> <Leader>df (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files %:p:h\<cr>"


nnoremap <leader>nf <cmd>NERDTreeFind<cr>
nnoremap <leader>nn <cmd>NERDTreeFocus<cr>

nnoremap <leader>tc <cmd>tabclose<cr>
nnoremap <leader>tn <cmd>tabnew<cr>
nnoremap <leader>tt <cmd>tabnew \| terminal powershell.exe<Enter>i
nnoremap <leader>ts <cmd>vsplit \| terminal powershell.exe<Enter>i
nnoremap <leader>ti <cmd>split \| terminal powershell.exe<Enter>i

nnoremap <leader>w <cmd>:w<cr>
nnoremap <leader>q <cmd>:q<cr>
"nnoremap <leader>q <cmd>:bd<cr>

"Esc to escape from terminal 
tnoremap <Esc> <C-\><C-n>
"Split resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><
nnoremap <leader>+ 10 <C-w>+
nnoremap <leader>- 10 <C-w>-

"Nav through tabs
map <leader>h :tabprevious<cr>
map <leader>l :tabnext<cr>

"map <leader>h :BufferPrevious<cr>
"map <leader>l :BufferNext<cr>
"Vimtex maps
nnoremap <leader>tx <Plug>(vimtex-compile)
nnoremap <leader>tv <Plug>(vimtex-view)

"Ctrl+n para abrir NERDTree
nmap <C-n> :NERDTreeToggle<CR> 

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"----------------------------------------------MAPPINGS-----------------------------------------------------
