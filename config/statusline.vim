"
"" statusline
"
set laststatus=2
set statusline=%<%f
set statusline+=%w%h%m%r
if common#functions#HasPlug('vista.vim')
  set statusline+=%=%{NearestMethodOrFunction()}
endif
set statusline+=%=
set statusline+=\ [%{&ff}:%{&fenc}:%Y]
set statusline+=\ %-14.(%l,%c%V%)
set statusline+=\ %p%%
set statusline+=\ 

