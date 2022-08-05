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
nnoremap <leader>tt <cmd>vsplit \| terminal <Enter>

nnoremap <leader>w <cmd>:w<cr>
"nnoremap <leader>q <cmd>:q<cr>
nnoremap <leader>q <cmd>:bd<cr>

"Esc to escape from terminal 
tnoremap <Esc> <C-\><C-n>
"Split resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><
nnoremap <leader>+ 10 <C-w>+
nnoremap <leader>- 10 <C-w>-

"Nav through tabs
"map <leader>h :tabprevious<cr>
"map <leader>l :tabnext<cr>

map <leader>h :BufferPrevious<cr>
map <leader>l :BufferNext<cr>

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


