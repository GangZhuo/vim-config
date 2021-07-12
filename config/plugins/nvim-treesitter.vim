
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

local function has_value (tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end
	return false
end

local html = require'nvim-treesitter.parsers'.get_parser_configs().html
local orgval = html.used_by;
if not has_value(orgval, 'xml') then
	-- Hack: If no this line, the xml can not add to 'ft_to_parsername'
	html.used_by = nil
	html.used_by = "xml"
	table.insert(orgval, "xml")
	rawset(html, "used_by", orgval);
end
EOF

function! MyFoldText()
	let startLineText = trim(getline(v:foldstart))
	let endLineText = trim(getline(v:foldend))
	let indentation = repeat(" ", indent(v:foldstart))
	let spaces = repeat(" ", 200)
	let str = indentation . startLineText . "..." . endLineText . spaces
	return str
endfunction

function! AttachFold()
lua <<EOF
local parser = require'nvim-treesitter.parsers'
if parser.has_parser() then
	vim.api.nvim_command('setlocal foldexpr=nvim_treesitter#foldexpr()')
	vim.api.nvim_command('setlocal foldtext=MyFoldText()')
	vim.api.nvim_command('setlocal foldmethod=expr')
end
EOF
endfunction

augroup NvimTreesitterFold
	autocmd!
	autocmd FileType * call AttachFold()
augroup END

