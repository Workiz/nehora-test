#!/bin/bash

echo "out"
if [[ "[DEVOPS-369]" =~ \[(.*)\](.*) ]]; then
    echo "here"
    src=${BASH_REMATCH[1]}
    echo $src
fi