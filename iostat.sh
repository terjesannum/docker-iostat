#!/bin/sh

while sleep $SLEEP; do
    echo -n "{\"message\":\""
    iostat | expand | sed ':a;N;$!ba;s/\n/\\n/g' | tr -d \\n
    echo "\"}"
done
