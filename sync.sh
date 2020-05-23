#!/bin/bash

function sync(){
    if [ $1 -nt $2 ];then
        cp $1 $2
    fi
}

export -f sync

for dir in $(ls -d */);do
    echo ${dir}sync.sh
done

unset -f sync
