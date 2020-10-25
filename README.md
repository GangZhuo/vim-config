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

* CTRL + h	移动到左侧窗口
* CTRL + j	移动到上方窗口
* CTRL + k	移动到下方窗口
* CTRL + l	移动到右侧窗口

* ALT + -	增加高度
* ALT + _	减小高度

* ALT + )	增加宽度
* ALT + (	减小宽度

* <leader>tt 新建一个终端
* Backspace	 关闭搜索高亮颜色

* <space><space> 保存当前 buffer

* Y			复制到行尾
* vv		选择整行

* ALT + l	切换 buffer
* ALT + h	切换 buffer
* ALT + L	移动 buffer
* ALT + H	移动 buffer

* <leader>tn	新建一个 Tab
* <leader>tc	关闭 Tab

### 插入模式下

* jk		等同于按 <ESC>
* ALT + o	在下方新建空白行
* ALT + O	在上方新建空白行
* ALT + h	等同于按 <HOME>
* ALT + l	等同于按 <END>
* CTRL + h	左移一字符
* CTRL + j	下移一行
* CTRL + k	上移一行
* CTRL + l	右移一字符

