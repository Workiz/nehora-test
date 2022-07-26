#!/bin/bash

# echo "out"
# if [[ "[DEVOPS-369]" =~ \[(.*)\](.*) ]]; then
#     echo "here"
#     src=${BASH_REMATCH[1]}
#     echo $src
# fi

if [[ "${{github.head_ref}}" =~ ([A-Z]+-[1-9]+).* ]]; then
            BRANCH_TITEL=${BASH_REMATCH[1]}
            echo $BRANCH_TITEL
          fi