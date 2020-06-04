#!/bin/bash

install(){
    if [ `command -v code|wc -l` -eq 0 ];then
        echo "haven't install vscode in your device"
        exit
    fi
    if [ -f ~/.config/Code/User/settings.json ];then
        mv ~/.config/Code/User/setting.json ~/.config/Code/User/setting.json.bak
    fi
    cp setting.json ~/.config/Code/User/setting.json
    if [ -f ~/.config/Code/User/keybindings.json ];then
        mv ~/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json.bak
    fi
    cp keybindings.json ~/.config/Code/User/keybindings.json
}
install