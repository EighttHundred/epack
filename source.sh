#!/usr/bin/env bash

cd trojan
source source.sh
cd ../proxy
source source.sh
cd ..

showtotal(){
     git log --author="eightthundred" --pretty=tformat: --numstat | \
     awk '{ add += $1; subs += $2; loc += $1 - $2 } \
     END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' -
}


source vim/source.sh
source vim/source.sh
source vim/source.sh
source vim/source.sh
source vim/source.sh
source vim/source.sh
source vim/source.sh
source vim/source.sh
source vim/source.sh
source vim/source.sh
