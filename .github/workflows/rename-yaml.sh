#!/bin/sh

set -e

count=$(ls -1 main-*.bak > /dev/null 2>&1 | wc -l)

if [ $count -eq 0 ]; then
    count=1
fi

mv main.yml main-${count}.bak
mv workflow-main* main.yaml
