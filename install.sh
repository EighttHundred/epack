#!/usr/bin/env bash

if [ ! -d bin ];then
    mkdir bin
fi
if [ ! -d tmp ];then
    mkdir tmp
fi
bash trojan/install.sh
bash privoxy/install.sh
bash zsh/install.sh

source configure.sh
