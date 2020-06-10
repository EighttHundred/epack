#!/usr/bin/env bash

if [ ! -d bin ];then
    mkdir bin
fi
if [ ! -d tmp ];then
    mkdir tmp
fi
cd trojan
bash install.sh
cd ../privoxy
bash install.sh
cd ../zsh
bash install.sh
cd ..

source configure.sh
