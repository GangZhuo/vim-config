" 定义前导键
let mapleader=";"

" 窗口相关快捷键
noremap <c-h> <C-w>h
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
noremap <c-l> <C-w>l
" 更改窗口垂直大小
nnoremap <M--> :resize +3<CR>
nnoremap <M-_> :resize -3<CR>
" 更改窗口水平大小
nnoremap <M-(> :vertical resize -3<CR>
nnoremap <M-)> :vertical resize +3<CR>
" 分割窗口
"nnoremap <c-w>k :abo split <cr>
"nnoremap <c-w>h :abo vsplit <cr>
"nnoremap <c-w>j :rightbelow split <cr>
"nnoremap <c-w>l :rightbelow vsplit <cr>

vnoremap <leader>y "+y    " 设置快捷键将选中
                          " 文本块复制至系统剪贴板
nmap <leader>p "+p        " 设置快捷键将系统剪贴板
                          " 内容粘贴至 vim

" 关闭搜索颜色
nnoremap <BackSpace> :nohl<cr>

" 新建终端
"nnoremap <leader>tt :terminal<cr>

" 插入模式下的一些快捷键
"inoremap <M-o> <esc>o
"inoremap <M-O> <esc>O
"inoremap <M-h> <HOME>
"inoremap <M-l> <END>
"inoremap <c-h> <left>
"inoremap <c-j> <down>
"inoremap <c-k> <up>
"inoremap <c-l> <right>

"function! s:writeCurrent() abort
"    if !&readonly && &buftype =~# '^\%(acwrite\)\=$' && expand('%') !=# ''
"        write
"    endif
"endfunction
" noremap <silent> <space><space> <esc>:call common#functions#Wall()<cr>
"noremap <space><space> <esc>:call <SID>writeCurrent()<cr>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

vnoremap y "6y
vnoremap p "6p

" 复制到末尾
"nnoremap Y y$

"if !common#functions#HasPlug('vim-airline') && !common#functions#HasPlug('vim-crystalline')
"    nnoremap  <M-l> :call common#functions#MoveTabOrBuf(1)<cr>
"    nnoremap  <M-h> :call common#functions#MoveTabOrBuf(0)<CR>
"endif
"nnoremap <silent> <leader>tn :tabnew<cr>
"nnoremap <silent> <leader>tc :tabclose<cr>
"nnoremap <silent> <M-L> :tabmove +1<cr>
"nnoremap <silent> <M-H> :tabmove -1<cr>

" esc in insert mode
inoremap jk <esc>

" esc in command mode
cnoremap jk <C-C>

