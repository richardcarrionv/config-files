"nnoremap <SPACE> <nop>
"Leader mapped
let mapleader = " "

nnoremap <leader><Enter> o<Esc>
"nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fm <cmd>CocCommand prettier.forceFormatDocument<cr>

nnoremap <silent> <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <expr> <Leader>gf (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":GFiles\<cr>"
nnoremap <silent> <expr> <Leader>ag (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Ag\<cr>"
nnoremap <silent> <expr> <Leader>bf (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Buffers\<cr>"

nnoremap <silent> <expr> <Leader>df (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files %:p:h\<cr>"

"nnoremap <leader>gf <cmd>GFiles<cr>

nnoremap <leader>nf <cmd>NERDTreeFind<cr>
nnoremap <leader>nn <cmd>NERDTreeFocus<cr>

nnoremap <leader>tc <cmd>tabclose<cr>
nnoremap <leader>tn <cmd>tabnew<cr>
nnoremap <leader>tt <cmd> vsplit \| terminal <Enter>

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


"Vimtex maps
nnoremap <leader>tx <Plug>(vimtex-compile)
nnoremap <leader>tv <Plug>(vimtex-view)

"Open buffers with fzf
"map <leader>bf :Buffers<cr>

"String search
"map <leader>ag :Ag<cr>

"Ctrl+n para abrir NERDTree
nmap <C-n> :NERDTreeToggle<CR> 
