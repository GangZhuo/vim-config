
if has('termguicolors')
	set termguicolors
endif
let g:sonokai_style = 'default'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
colorscheme sonokai

" Access colors present in 256 colorspace
"let base16colorspace=256
"
"if filereadable(expand("~/.vimrc_background"))
"    source ~/.vimrc_background
"else
"    set background=dark
"    colorscheme base16-default-dark
"    " colorscheme base16-railscasts
"endif
"
"" 24 bit colour support!
"set termguicolors

