#!/bin/bash
synchronize(){
    if [ -f ~/.config/Code/User/settings.json ];then
        cp ~/.config/Code/User/settings.json settings.json
    fi
    if [ -f ~/.config/Code/User/keybindings.json ];then
        cp ~/.config/Code/User/keybindings.json keybindings.json
    fi
}
synchronize
