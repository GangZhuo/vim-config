" coc插件安装目录
let g:coc_data_home = g:cache_root_path . 'coc/'
" coc-settings.json所在目录
let g:coc_config_home = g:other_config_root_path


" coc插件列表，可根据需要进行删减
let g:coc_global_extensions = [
    \ 'coc-explorer',
    \ 'coc-lists',
    \ 'coc-yank',
    \ 'coc-clangd',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-tsserver',
    \ 'coc-sh',
    \ 'coc-lua',
    \ ]


    "\ 'coc-xml',

    "\ 'coc-vimlsp',
    "\ 'coc-calc',
    "\ 'coc-stylelint',
    "\ 'coc-snippets',
    "\ 'coc-marketplace',
    "\ 'coc-yaml',
    "\ 'coc-cmake',
    "\ 'coc-word',
    "\ 'coc-python',
    "\ 'coc-tabnine',
    "\ 'coc-prettier',
    "\ 'coc-rainbow-fart',
    "\ 'coc-git',
    "\ 'coc-ci',

" 卸载不在列表中的插件
function! s:uninstall_unused_coc_extensions() abort
    for e in keys(json_decode(join(readfile(expand(g:coc_data_home . '/extensions/package.json')), "\n"))['dependencies'])
        if index(g:coc_global_extensions, e) < 0
            execute 'CocUninstall ' . e
        endif
    endfor
endfunction
"autocmd User CocNvimInit call s:uninstall_unused_coc_extensions()

" 检查当前光标前面是不是空白字符
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" tab触发补全或者选择下一个补全
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" shift tab 选择上一个补全
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" down 选择下一个补全
inoremap <silent><expr> <down>
    \ pumvisible() ? "\<C-n>" : "\<down>"

" up 选择上一个补全
inoremap <silent><expr> <up>
    \ pumvisible() ? "\<C-p>" : "\<up>"

" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"inoremap <silent><expr> <space> pumvisible() ? coc#_select_confirm()
"                              \: "\<space>"

" diagnostic 跳转
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> <M-j> <Plug>(coc-diagnostic-next)
"nmap <silent> <M-k> <Plug>(coc-diagnostic-prev)
nmap <silent> gj <Plug>(coc-diagnostic-next)
nmap <silent> gk <Plug>(coc-diagnostic-prev)

" 跳转到定义
nmap <silent> gd <Plug>(coc-definition)
" 跳转到类型定义
nmap <silent> gy <plug>(coc-type-definition)
" 跳转到实现
nmap <silent> gi <plug>(coc-implementation)
" 跳转到引用
nmap <silent> gr <plug>(coc-references)

" 重构refactor,需要lsp支持
"nmap <space>rf <Plug>(coc-refactor)
" Formatting selected code.
"xmap <space>f  <Plug>(coc-format-selected)
"nmap <space>f  <Plug>(coc-format-selected)
" 变量重命名
nmap <leader>rn <Plug>(coc-rename)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use K to show documentation in preview window.
" 函数文档
nnoremap <silent> K :call <SID>show_documentation()<CR>

" 函数参数的文档
nnoremap <silent> <leader>k :call CocActionAsync('showSignatureHelp')<CR>
" 光标悬浮时，显示函数签名
au CursorHoldI * sil call CocActionAsync('showSignatureHelp')

" 文档块支持
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
"nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Show all diagnostics.
nnoremap <silent><nowait> <F4>  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Mappings for CoCList {{{

    " session 保存目录
    call coc#config('session.directory', g:session_dir)
    " 退出时自动保存session
    call coc#config('session.saveOnVimLeave', v:false)

    call coc#config('list.maxHeight', 10)
    call coc#config('list.maxPreviewHeight', 8)
    call coc#config('list.autoResize', v:false)
    call coc#config('list.source.grep.command', 'rg')
    call coc#config('list.source.grep.args', [
        \ '--column',
        \ '--line-number',
        \ '--no-heading',
        \ '--color=always',
        \ '--smart-case'
      \ ])
    call coc#config('list.source.lines.defaultArgs', ['-e'])
    call coc#config('list.source.words.defaultArgs', ['-e'])
    call coc#config('list.source.files.command', 'rg')
    call coc#config('list.source.files.args', ['--files'])
    call coc#config('list.source.files.excludePatterns', ['.git'])

    " 有 fzf.vim 插件则不设置
    if !common#functions#HasPlug('fzf.vim')
        nnoremap <silent> <M-f> :<C-u>CocList --no-sort files<cr>
    endif


" }}}

" coc-explorer {{{
    let g:coc_explorer_global_presets = {
        \   '.vim': {
        \      'root-uri': '~/.vim',
        \   },
        \   'floating': {
        \      'position': 'floating',
        \      'floating-position': 'center',
        \      'floating-width': 100,
        \      'open-action-strategy': 'sourceWindow',
        \      'file-child-template': '[git | 2] [selection | clip | 1]
                    \ [indent] [icon | 1] [diagnosticError & 1]
                    \ [filename omitCenter 1][modified][readonly]
                    \ [linkIcon & 1][link growRight 1] [timeCreated | 8] [size]'
        \   },
        \   'floatingTop': {
        \     'position': 'floating',
        \     'floating-position': 'center-top',
        \     'open-action-strategy': 'sourceWindow',
        \   },
        \   'floatingLeftside': {
        \      'position': 'floating',
        \      'floating-position': 'left-center',
        \      'floating-width': 100,
        \      'open-action-strategy': 'sourceWindow',
        \   },
        \   'floatingRightside': {
        \      'position': 'floating',
        \      'floating-position': 'right-center',
        \      'floating-width': 100,
        \      'open-action-strategy': 'sourceWindow',
        \   },
        \   'simplify': {
        \     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
        \   }
    \ }

    " Use preset argument to open it
    " nmap <space>rd :CocCommand explorer --preset .vim<CR>
    nmap <leader><F2> :CocCommand explorer --sources=buffer+,file+ --width 32<CR>
    nmap <F2> :CocCommand explorer --sources=buffer+,file+ --preset floating<CR>

    augroup vime_coc_explorer_group
        autocmd!
        " autocmd WinEnter * if &filetype == 'coc-explorer' && winnr('$') == 1 | q | endif
        autocmd TabLeave * if &filetype == 'coc-explorer' | wincmd w | endif
    augroup END

    " config
    call coc#config("explorer.icon.enableNerdfont", v:true)
    call coc#config("explorer.bookmark.child.template", "[selection | 1] [filename] [position] - [annotation]")
    call coc#config("explorer.file.column.icon.modified", "•")
    call coc#config("explorer.file.column.icon.deleted", "✖")
    call coc#config("explorer.file.column.icon.untracked", "ᵁ")
    call coc#config("explorer.file.column.icon.renamed", "R")
    call coc#config("explorer.file.column.icon.unmerged", "≠")
    call coc#config("explorer.file.column.icon.ignored", "ⁱ")
    call coc#config("explorer.keyMappings.global", {
      \ 'k': 'nodePrev',
      \ 'j': 'nodeNext',
      \ 'h': 'collapse',
      \ 'l': ['expandable?', 'expand', 'open'],
      \ 'L': 'expand:recursive',
      \ 'H': 'collapse:recursive',
      \ 'K': 'expandablePrev',
      \ 'J': 'expandableNext',
      \ '<cr>': ['expandable?', 'cd', 'open'],
      \ '<bs>': 'gotoParent',
      \ 'r': 'refresh',
      \ 'v': ['toggleSelection', 'normal:j'],
      \ 'V': ['toggleSelection', 'normal:k'],
      \ '*': 'toggleSelection',
      \ 'w': 'open:split',
      \ 'W': 'open:vsplit',
      \ 't': 'open:tab',
      \ 'dd': 'cutFile',
      \ 'Y': 'copyFile',
      \ 'D': 'delete',
      \ 'P': 'pasteFile',
      \ 'R': 'rename',
      \ 'N': 'addFile',
      \ 'yp': 'copyFilepath',
      \ 'yn': 'copyFilename',
      \ 'gp': 'preview:labeling',
      \ 'x': 'systemExecute',
      \ 'f': 'search',
      \ 'F': 'searchRecursive',
      \ '<tab>': 'actionMenu',
      \ '?': 'help',
      \ 'q': 'quit',
      \ '<esc>': 'esc',
      \ 'gf': 'gotoSource:file',
      \ 'gb': 'gotoSource:buffer',
      \ '[[': 'sourcePrev',
      \ ']]': 'sourceNext',
      \ '[d': 'diagnosticPrev',
      \ ']d': 'diagnosticNext',
      \ '[c': 'gitPrev',
      \ ']c': 'gitNext',
      \ '<<': 'gitStage',
      \ '>>': 'gitUnstage'
    \ })
" }}}

