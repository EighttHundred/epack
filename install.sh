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
bash install.sh
cd ..

source configure.sh
