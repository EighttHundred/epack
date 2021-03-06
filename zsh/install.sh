#!/usr/bin/env bash
#auto generated by epack
if [ `command -v zsh|wc -l` -eq 0 ];then
    sudo apt install -y zsh
    echo "install zsh success"
else
    echo "already install zsh"
fi
if [ ! -d ~/.oh-my-zsh ];then
    if [ ! -e ../tmp/ohmyzsh.sh ];then
        wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O ../tmp/ohmyzsh.sh
    fi
    source ../tmp/ohmyzsh.sh --unattended
    echo "install oh-my-zsh success"
else
    echo "already install oh-my-zsh"
fi

source configure.sh
