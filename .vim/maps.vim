"Leader mapped
let mapleader = " "

nnoremap <leader>gf <cmd>GFiles<cr>
nnoremap <leader>ff <cmd>Files<cr>

nnoremap <leader>nf <cmd>NERDTreeFind<cr>
nnoremap <leader>nn <cmd>NERDTreeFocus<cr>

nnoremap <leader>t <cmd> vsplit \| terminal <Enter>

"Split resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><
nnoremap <leader>+ 10 <C-w>+
nnoremap <leader>- 10 <C-w>-

"Nav through tabs
map <leader>h :tabprevious<cr>
map <leader>l :tabnext<cr>

"Open buffers with fzf
map <leader>bb :Buffers<cr>

"String search
map <leader>ag :Ag<cr>

"Ctrl+n para abrir NERDTree
nmap <C-n> :NERDTreeToggle<CR> 

