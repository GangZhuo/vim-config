# vim-config
My vim config.

Copy from https://github.com/fgheng/vime

## Install

```
sudo apt-get install neovim ripgrep clangd nodejs npm default-jdk bear


# Use below command to find java home path:

sudo update-alternatives --config java

# After get java home path, open the file /etc/environment,
# and add below line:
#
#   JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
#
# Run below command to export the $JAVA_HOME

source /etc/environment

# Run below command to check JAVA_HOME

echo $JAVA_HOME



git clone https://github.com/GangZhuo/vim-config.git ~/.config/nvim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Run ":PlugInstall" in your vim.


## 快捷键

### 普通模式下

```
* CTRL + h       移动到左侧窗口
* CTRL + j       移动到上方窗口
* CTRL + k       移动到下方窗口
* CTRL + l       移动到右侧窗口

* ALT + -        增加高度
* ALT + _        减小高度

* ALT + )        增加宽度
* ALT + (        减小宽度

* <leader>tt     新建一个终端
* Backspace      关闭搜索高亮颜色

* <space><space> 保存当前 buffer

* Y              复制到行尾
* vv             选择整行

* ALT + l        切换 tab/buffer
* ALT + h        切换 tab/buffer
* ALT + L        移动 tab/buffer
* ALT + H        移动 tab/buffer

* <leader>tn     新建一个 Tab
* <leader>tc     关闭 Tab
```

### 插入模式下

```
* jk              等同于按 ESC
* ALT + o         在下方新建空白行
* ALT + O         在上方新建空白行
* ALT + h         等同于按 HOME
* ALT + l         等同于按 END
* CTRL + h        左移一字符
* CTRL + j        下移一行
* CTRL + k        上移一行
* CTRL + l        右移一字符
```

### 书签

```
* mx               Toggle mark 'x' and display it in the leftmost column
* dmx              Remove mark 'x' where x is a-zA-Z
* m,               Place the next available mark
* m.               If no mark on line, place the next available mark.
                   Otherwise, remove (first) existing mark.
* m-               Delete all marks from the current line
* m<Space>         Delete all marks from the current buffer
* ]`               Jump to next mark
* [`               Jump to prev mark
* ]'               Jump to start of next line containing a mark
* ['               Jump to start of prev line containing a mark
* `]               Jump by alphabetical order to next mark
* `[               Jump by alphabetical order to prev mark
* ']               Jump by alphabetical order to start of next line having a mark
* '[               Jump by alphabetical order to start of prev line having a mark
* m/               Open location list and display marks from current buffer
* m[0-9]           Toggle the corresponding marker !@#$%^&*()
* m<S-[0-9]>       Remove all markers of the same type
* ]-               Jump to next line having a marker of the same type
* [-               Jump to prev line having a marker of the same type
* ]=               Jump to next line having a marker of any type
* [=               Jump to prev line having a marker of any type
* m?               Open location list and display markers from current buffer
* m<BS>            Remove all markers
* m[a-zA-Z]        打标签
* '[a-zA-Z]        跳转到标签位置
* '.               最后一次变更的地方
* ''               跳回来的地方(最近两个位置跳转)
```

### coc.nvim 插件

```
* Tab              触发补全、选择下一个补全
* CTRL + <space>   触发补全
* Enter            选择第一个补全
* ALT + j          移动到下一个问题点
* ALT + k          移动到上一个问题点
* gd               跳转到定义
* gy               跳转到类型定义
* gi               跳转到实现
* gr               跳转到引用
* <space>rf        重构 refactor
* <space>f         格式化选中代码
* <space>rn        重命名
* K                显示函数文档
* <space>k         显示参数文档
* <F2>             显示文件窗口
* <leader>f        浮窗显示文件窗口
```
