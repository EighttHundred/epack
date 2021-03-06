#!/usr/bin/env bash
#auto generated by epack

if  [ $(command -v fzf | wc -l) -eq 0 ];then
    sudo apt install -y fzf
    echo "install fzf success"
else
    echo "already install fzf"
fi
if  [ $(command -v autojump | wc -l) -eq 0 ];then
    sudo apt install -y autojump
    echo "install autojump success"
else
    echo "already install autojump"
fi
if [ ! -d $ZSH/custom/plugins/incr ];then
    git clone git://github.com/makeitjoe/incr.zsh $ZSH/custom/plugins/incr
else
    echo "already install incr"
fi
echo "plugins=(fzf autojump incr)" >> ~/.zshrc
source ~/.zshrc



