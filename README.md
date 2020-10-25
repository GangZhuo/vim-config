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

