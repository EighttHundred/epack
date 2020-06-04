#!/usr/bin/env bash

CUR_DIR=$PWD
ZSH_DIR=$CUR_DIR/zsh-zsh-5.8
wget https://github.com/zsh-users/zsh/archive/zsh-5.8.tar.gz
tar -zxvf zsh-5.8.tar.gz
bash $ZSH_DIR/install

