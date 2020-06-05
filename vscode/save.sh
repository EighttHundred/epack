#!/usr/bin/env bash

FROM_DIR=~/.config/Code/User
for json in settings.json keybindings.json;do
    if [ -e $FROM_DIR/$json ];then
        sudo cp $FROM_DIR/$json $json
        echo save $json success
    else
        echo $FROM_DIR/$json not exist
    fi
done
