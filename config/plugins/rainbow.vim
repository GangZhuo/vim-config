let g:rainbow_active = 1

let lightcolors =  ['lightblue', 'lightyellow', 'red', 'darkgreen', 'darkyellow', 'lightred', 'yellow', 'cyan', 'magenta', 'white']
let darkcolors = ['DarkBlue', 'Magenta', 'Black', 'Red', 'DarkGray', 'DarkGreen', 'DarkYellow']

let g:rainbow_conf = {
\    'guifgs': (&background=="light" ? darkcolors : lightcolors),
\    'ctermfgs': (&background=="light" ? darkcolors : lightcolors)
\}
