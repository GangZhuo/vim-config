let s:is_backslash_platform = exists('+shellslash')
let s:drive_backslash = '\v^\a:\\\\'
let s:drive_frontslash = '\v^\a://'

""
" Returns the root component of {path}.
" In unix, / is the only root.
" In windows, the root can be \ (which vim treats as the default drive), a drive
" like D:\\, and also / or D:// if shellslash is set.
" The root of a relative path is empty.
function! s:GetPathRootComponent(path) abort
  if !s:is_backslash_platform
    return a:path[:0] ==# '/'   ? '/'   :
         \ a:path[:1] ==# '~/'  ? '~/'  :
         \ a:path[:1] ==# './'  ? './'  :
         \ a:path[:2] ==# '../' ? '../' :
         \ a:path[:0] ==# '$'   ? '$'   :
         \ ''
  endif
  if a:path ==# '\'
    " Windows users can always use backslashes regardless of &shellslash.
    " Vim interprets \ as the default drive.
    return '\'
  elseif &shellslash && a:path[:0] ==# '\'
    " / also expands to the default drive if &shellslash is set.
    return '/'
  elseif a:path =~# s:drive_backslash
    " Windows users can always give drives like c:\\
    return matchstr(a:path, s:drive_backslash)
  elseif &shellslash
    " Windows users with &shellslash set can also give drives like c://
    return matchstr(a:path, s:drive_frontslash)
  endif
  return ''
endfunction

"" Whether {path} is relative.
function! s:IsRelativePath(path) abort
  return empty(s:GetPathRootComponent(a:path))
endfunction

"" Whether {path} is absolute.
function! s:IsAbsolutePath(path) abort
  "return (fnamemodify(a:path, ':p') == a:path)
  return !s:IsRelativePath(a:path)
endfunction

function! s:GetSessionSavePath()
  let l:cwd = getcwd()
  let l:filename = substitute(l:cwd, '/', '\\%', 'g') . '.vim'
  let l:fullpath = g:session_dir . l:filename
  return l:fullpath
endfunction

function! s:SaveSessionTo(name) abort
  if !isdirectory(g:session_dir)
    call mkdir(g:session_dir)
  endif

  if empty(a:name)
    let l:path = s:GetSessionSavePath()
  elseif s:IsAbsolutePath(a:name)
    let l:path = a:name
  else
    let l:path = g:session_dir . substitute(a:name, '/', '\\%', 'g')
  endif

  exec "mksession! " . l:path
  echo "Session saved to: " . l:path
endfunction

function! s:SaveSession(name) abort
  if empty(a:name)
    call s:SaveSessionTo('./Session.vim')
  else
    call s:SaveSessionTo(a:name)
  endif
endfunction

function! s:RestoreSessionFrom(name) abort
  if empty(a:name)
    let l:path = s:GetSessionSavePath()
  elseif s:IsAbsolutePath(a:name)
    let l:path = a:name
  else
    let l:path = g:session_dir . substitute(a:name, '/', '\\%', 'g')
  endif

  exec "source " . l:path
  echo "Restore Session: " . l:path
endfunction

function! s:RestoreSession(name) abort
  if empty(a:name)
    call s:RestoreSessionFrom('./Session.vim')
  else
    call s:RestoreSessionFrom(a:name)
  endif
endfunction

"augroup vime_session_group
"  autocmd!
"  autocmd VimLeavePre * call s:SaveSession()
"augroup END

command! -nargs=? SaveSession call s:SaveSession(<q-args>)
command! -nargs=? RestoreSession call s:RestoreSession(<q-args>)


