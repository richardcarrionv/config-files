"fzf find hidden files
"let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd Filetype tex setl updatetime=1


" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" other plugin before putting this into your config.


"Hasta aqui coco ----------------------------------------------------------------
"
" Autotag closetag
"
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Customize fzf colors to match your color scheme                                          
" - fzf#wrap translates this to a set of `--color` options                                 
let g:fzf_colors =                                                                         
\ { 'fg':      ['fg', 'Normal'],                                                           
  \ 'bg':      ['bg', 'Normal'],                                                           
  \ 'hl':      ['fg', 'Comment'],                                                          
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],                             
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],                                       
  \ 'hl+':     ['fg', 'Statement'],                                                        
  \ 'info':    ['fg', 'PreProc'],                                                          
  \ 'border':  ['fg', 'Ignore'],                                                           
  \ 'prompt':  ['fg', 'Conditional'],                                                      
  \ 'pointer': ['fg', 'Exception'],                                                        
  \ 'marker':  ['fg', 'Keyword'],                                                          
  \ 'spinner': ['fg', 'Label'],                                                            
  \ 'header':  ['fg', 'Comment'] } 

let g:fzf_layout = { 'down': '~35%' }
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

let g:vimtex_view_method = 'SumatraPDF.exe'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'SumatraPDF.exe'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'vimtex-build',
            \}
