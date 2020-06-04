#!/bin/bash

FROM_DIR=~/.config/Code/User
TO_DIR=$PWD/vscode
for json in settings.json keybindings.json;do
    sync $FROM_DIR/$json $TO_DIR/$json
done
