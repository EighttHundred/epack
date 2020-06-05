#!/usr/bin/env bash
TO_DIR=~/.config/Code/User
for json in settings.json keybindings.json;do
    if [ -e $TO_DIR/$json ];then
        echo backup $TO_DIR/$json to $TO_DIR/$json.old
        sudo mv $TO_DIR/$json $TO_DIR/$json.old
    fi
    sudo cp $json $TO_DIR/$json
    echo load $json success
done
