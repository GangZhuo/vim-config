" 基本配置
set nocompatible                                            " 不要兼容vi
syntax enable
syntax on
filetype plugin indent on

set encoding=utf-8                                          " 编码
set fileencodings=ucs-bom,utf-8,gb18030,cp936,latin1        " 编码猜测
set number
set relativenumber                                          " 设置相对行号
set smartindent                                             " 智能缩进
set autoindent                                              " 自动换行缩进
set linebreak                                               " 软折行
set noswapfile                                              " 禁止生成swap文件
set hidden                                                  " 终端隐藏后不结束
set ignorecase                                              " 忽略大小写
" set smartcase
set infercase                                               " Adjust case in insert completion mode
set history=500                                             " 历史命令
set splitbelow                                              " 在下方分割
"set expandtab                                              " tab扩展为空格
set noet                                                    " tab不扩展为空格
set list                                                    " Show TAB
set tabstop=4
set softtabstop=4                                           " 连续数量的空格看作一个制表符
set shiftwidth=4
set smarttab
set shiftround
" set foldmethod=indent                                     " 基于缩进的折叠
" set foldmethod=syntax                                     " 基于语法的折叠
" set nofoldenable                                          " 启动vim时，关闭折叠
set colorcolumn=80                                          " 设置超过 80 长度提示

" Some cos servers have issues with backup files,
" see https://github.com/neoclide/coc.nvim/issues/649
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
"set updatetime=100                                  " 更新时间100ms 默认4000ms 写入swap的时间
set updatetime=300

" Don't pass message to |ins-completion-menu|.
set shortmess+=c

set sessionoptions+=globals
set autoread                                                " 文件在外部被修改过，重新读入
set autowrite                                               " 自动写回
set confirm                                                 " 显示确认对话框
set noshowmode
set timeout ttimeout
set timeoutlen=500
set ttimeoutlen=10
set mouse=n                                         " 允许使用鼠标, normal生效，a则是全模式生效

" 高亮当前行
set cursorline

" 高亮当前列
"set cursorcolumn

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" 定位到退出位置并移动到屏幕中央
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif | normal! zvzz
endif

