
lua <<EOF
require'nvim-treesitter.configs'.setup({
	ensure_installed = "maintained",
	ignore_install = {},
	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = 1000,
	},
})
EOF

" set foldlevel=0                  " close all folds or
set foldlevel=99                   " Open all folds
set foldenable

function! GetSpaces(foldLevel)
	if &expandtab == 1
		" Indenting with spaces
		let str = repeat(" ", a:foldLevel / (&shiftwidth + 1) - 1)
		return str
	elseif &expandtab == 0
		" Indenting with tabs
		return repeat(" ", indent(v:foldstart) - (indent(v:foldstart) / &shiftwidth))
	endif
endfunction

function! MyFoldText()
	let startLineText = getline(v:foldstart)
	let endLineText = trim(getline(v:foldend))
	let indentation = GetSpaces(foldlevel("."))
	let spaces = repeat(" ", 200)
	let str = indentation . startLineText . "..." . endLineText . spaces
	return str
endfunction

function! AttachFold()
	setlocal foldexpr=nvim_treesitter#foldexpr()
	setlocal foldtext=MyFoldText()
	setlocal foldmethod=expr
endfunction

augroup NvimTreesitterFold
	autocmd!
	autocmd FileType * call AttachFold()
augroup END

