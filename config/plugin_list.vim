
" highlight, fold, and so on
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

" 快速移动
Plug 'easymotion/vim-easymotion'

" 检索
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }

" 显示标注
Plug 'kshenoy/vim-signature'

" BufferOnly
Plug 'vim-scripts/BufOnly.vim'

" Session 会话管理
Plug 'mhinz/vim-startify'

" ctags 自动产生 ctag 文件
Plug 'ludovicchabant/vim-gutentags'

" 函数列表窗口
Plug 'liuchengxu/vista.vim'

" 自动补全
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}

" 轻量级自动补全
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1

" Theme
"Plug 'chriskempson/base16-vim'
Plug 'sainnhe/sonokai'

