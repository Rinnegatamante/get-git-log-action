#!/bin/bash
log=$(git log --pretty=format:'* %h %s')

echo "$log"
echo ::set-output name=log::"$log"

