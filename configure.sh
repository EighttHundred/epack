#!/usr/bin/env bash

echo "CUR_PATH=\$PWD" >> ~/.bashrc
echo "cd $PWD" >> ~/.bashrc
echo "source source.sh" >> ~/.bashrc
echo "cd \$CUR_PATH" >> ~/.bashrc
source ~/.bashrc
if [ -e ~/.zshrc ];then
    echo "CUR_PATH=\$PWD" >> ~/.zshrc
    echo "cd $PWD" >> ~/.zshrc
    echo "source source.sh" >> ~/.zshrc
    echo "cd \$CUR_PATH" >> ~/.zshrc
    source ~/.zshrc
fi

