" Access colors present in 256 colorspace
let base16colorspace=256

if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
else
    set background=dark
    colorscheme base16-default-dark
    " colorscheme base16-railscasts
endif

" 24 bit colour support!
set termguicolors

