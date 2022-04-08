#!/bin/bash
x = 0
git log --pretty=format:'* %h %s' | while read line ; do echo ::set-output name=log${x}::"$line" ; x=$(( $x + 1 ));  done

echo "$log"
echo ::set-output name=log::"$log"

