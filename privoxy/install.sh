#!/usr/bin/env bash
#auto generated by epack
if [ `command -v privoxy|wc -l` -eq 0 ];then
    sudo apt install -y privoxy
    echo "install privoxy success"
else
    echo "already installed privoxy"
fi
source configure.sh
