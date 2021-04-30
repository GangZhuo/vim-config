# vim-config
My vim config.

Copy from https://github.com/fgheng/vime

## Install

```
sudo apt-get install neovim nodejs npm default-jdk clangd bear bat ripgrep silversearcher-ag

# Install Fonts
sudo mkdir /usr/local/share/fonts/JetBrainsNerdFont
sudo cd /usr/local/share/fonts/JetBrainsNerdFont
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
sudo unzip JetBrainsMono.zip
sudo rm JetBrainsMono.zip
fc-cache -f -v

git clone https://github.com/GangZhuo/vim-config.git ~/.config/nvim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Run ":PlugInstall" in your vim.


## 快捷键

前导键 &lt;leader&gt; 为 ";"。

### 基础快捷键

```
* CTRL + h       移动焦点到左侧窗口
* CTRL + j       移动焦点到上方窗口
* CTRL + k       移动焦点到下方窗口
* CTRL + l       移动焦点到右侧窗口

* ALT + -        增加高度
* ALT + _        减小高度

* ALT + )        增加宽度
* ALT + (        减小宽度

* <leader>y      复制选中文本块至系统剪贴板
* <leader>p      从系统粘贴板粘贴内容至 vim

* bp     Previous buffer
* bn     Next buffer

* <Backspace>    关闭搜索高亮颜色

* jk             esc in insert mode and command mode
```

### fzf 搜索

```
* CTRL + j         下移搜索窗口中的选项
* CTRL + k         上移搜索窗口中的选项
* CTRL + g         退出当前窗口

* ALT + f          搜索工程目录下的文件
* ALT + F          搜索 HOME 下的所有文件
* ALT + b          显示当前打开的所有 buffer
* ALT + r          最近打开的文件
* ALT + w          显示打开的窗口
* ALT + m          显示 vim 中的所有标记 (mark)
* ALT + M          显示 vim 中的所有映射 (快捷键)
* ALT + s          使用 RipGrep 搜索当前工程下的文件内容
                   (Visual 模式下则搜索 vim 选中内容)
* ALT + t          当前 buffer 的 tags
* ALT + T          All tags
* ?                模糊搜索所有打开的 buffer 的内容
* ALT + y          显示复制内容
* ALT + J          显示跳转
* <F8>             quickfix
* <F9>             locationList

```

### coc-explorer 文件管理器

```
* <F2>             浮窗显示文件窗口
* <leader><F2>     左侧显示文件窗口
* <F3>             浮窗显示当前 buffer 的 tags 窗口
* <leader><F3>     右侧显示 tags 窗口
* k                上一个节点
* j                下一个节点
* h                收起
* l                展开/打开文件
* H                递归收起
* L                递归展开
* <Enter>           cd 目录/open 文件
* <Backspace>       跳到父节点
* r                 刷新
* f                 搜索
* F                 递归搜索
* <tab>             弹出菜单
* q                 退出
```

### coc.nvim 插件

```
* Tab              如果存在补全下拉框、则选择下一个补全
* Shift + Tab      如果存在补全下拉框, 则选择上一个补全
* Enter            选择第一个补全
* <space>          选择第一个补全
* gj               移动到下一个问题点
* gk               移动到上一个问题点
* gd               跳转到定义
* gy               跳转到类型定义
* gi               跳转到实现
* gr               跳转到引用
* <leader>rn       重命名
* K                显示函数文档
* <leader>k        显示参数文档
* <leader>f        浮窗显示文件窗口

* <F4>             打开 coclist dialogistic
* <leader>c        打开 coclist command
```

### EasyMotion

```
* <leader>f       示意一个字符
* <leader>F       示意单词
* gl              示意行
```

### 折叠

```
* za              打开或关闭当前折叠
* zM              关闭所有折叠
* zR              打开所有折叠
* zc              折叠
* zC              在所在范围内所有嵌套的折叠点进行折叠
* zo              展开折叠
* zO              对所在范围内所有嵌套的折叠点展开
* [z              到当前打开的折叠的开始处
* ]z              到当前打开的折叠的末尾处
* zj              向下移动到下一个折叠的开始处(关闭的折叠也被计入)
* zk              向上移动到前一个折叠的结束处(关闭的折叠也被计入)
```

### 书签 (mark)

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

