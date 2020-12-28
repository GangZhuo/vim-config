
" Highlight comment in the '.json' file
"Plug 'kevinoid/vim-jsonc'

" 重复上次的动作
"Plug 'tpope/vim-repeat'

" 功能很强的折叠插件, zc zo
Plug 'pseewald/vim-anyfold'

" 快速移动
Plug 'easymotion/vim-easymotion', {'on':
   \ [
   \ '<Plug>(easymotion-bd-f)', '<Plug>(easymotion-overwin-f)',
   \ '<Plug>(easymotion-overwin-f2)', '<Plug>(easymotion-bd-jk)',
   \ '<Plug>(easymotion-overwin-line)', '<Plug>(easymotion-bd-w)',
   \ '<Plug>(easymotion-overwin-w)', '<Plug>(easymotion-s)',
   \ ]}

" 彩虹括号
Plug 'luochen1990/rainbow'

"icons
Plug 'ryanoasis/vim-devicons'

" 检索
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }

" 注释插件
"Plug 'scrooloose/nerdcommenter'

" 显示标注
Plug 'kshenoy/vim-signature'

" Session
"Plug 'mhinz/vim-startify'

" ctags
Plug 'ludovicchabant/vim-gutentags'

" 函数列表
Plug 'liuchengxu/vista.vim', {'on': ['Vista!!', 'Vista']}

" 自动补全
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Theme
Plug 'chriskempson/base16-vim'

