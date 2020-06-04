#!/bin/bash

function sync(){
    if [ $1 -nt $2 ];then
        cp $1 $2
    fi
}

export -f sync


for job in $(cat sync.txt);do
    echo $job
done

unset -f sync
