"nnoremap <SPACE> <nop>
"Leader mapped
let mapleader = " "

nnoremap <leader><Enter> o<Esc>
nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fm <cmd>CocCommand prettier.forceFormatDocument<cr>

nnoremap <leader>gf <cmd>GFiles<cr>

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
map <C-h> :tabprevious<cr>
map <C-l> :tabnext<cr>

"Nav through panels
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"Vimtex maps
nnoremap <leader>tx <Plug>(vimtex-compile)
nnoremap <leader>tv <Plug>(vimtex-view)

"Open buffers with fzf
map <leader>bf :Buffers<cr>

"String search
map <leader>ag :Ag<cr>

"Ctrl+n para abrir NERDTree
nmap <C-n> :NERDTreeToggle<CR> 
