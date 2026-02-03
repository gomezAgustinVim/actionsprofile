#!/bin/sh

set -e

count=$(ls -1 main-*.bak > /dev/null 2>&1 | wc -l)
add=$((count+1))

if [ $count -eq 0 ]; then
    count=1
fi

mv main.y*ml main-${add}.bak
mv workflow-main* main.yaml
