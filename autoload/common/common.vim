function! common#common#echo() abort
    echom 'autoload#common#echo()'
endfunction

function! common#common#init() abort

    " vimrc 所在根目录
    let g:vim_root_path = fnamemodify($MYVIMRC, ':h') . '/'

    " 配置所在根目录
    let g:config_root_path = g:vim_root_path . 'config/'

    " 插件配置所在目录
    let g:plugins_config_root_path = g:config_root_path . "plugins/"
    let g:other_config_root_path = g:config_root_path . "other/"

    " vim 插件、缓存等数据根目录
    let g:cache_root_path = $HOME . '/.cache/nvim/'

    " vim 插件安装目录
    let g:plugins_install_path = g:cache_root_path . 'plugins/'

    " session 保存目录
    let g:session_dir = g:cache_root_path . 'sessions/'

    " 撤销记录目录
    let g:undo_dir = g:cache_root_path . 'undo/'

    " 脚本目录
    let g:scripts_root_path = g:vim_root_path . "/scripts"

endfunction
