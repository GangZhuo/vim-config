" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"let g:vista_ctags_cmd = {
"    \ 'haskell': 'hasktags -x -o - -c',
"    \ }
" let g:vista_default_executive = 'ctags'
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
    \   "function": "\uf794",
    \   "variable": "\uf71b",
    \  }

nnoremap <leader><F3> :Vista!!<CR>
