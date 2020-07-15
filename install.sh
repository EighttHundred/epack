#!/usr/bin/env bash

if [ ! -d bin ];then
    mkdir bin
fi
if [ ! -d tmp ];then
    mkdir tmp
fi
cd trojan
source install.sh
cd ../privoxy
source install.sh
cd ../proxy
source source.sh
start-proxy
cd ../zsh
source install.sh
cd ..

echo "cd $PWD" >> ~/.bashrc
echo "source source.sh" >> ~/.bashrc
echo "cd -" >> ~/.bashrc
source ~/.bashrc
if [ -e ~/.zshrc ];then
    echo "cd $PWD" >> ~/.zshrc
    echo "source source.sh" >> ~/.zshrc
    echo "cd -" >> ~/.zshrc
    source ~/.zshrc
fi

