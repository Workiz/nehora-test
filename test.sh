#!/bin/bash

# echo "out"
# if [[ "[DEVOPS-369]" =~ \[(.*)\](.*) ]]; then
#     echo "here"
#     src=${BASH_REMATCH[1]}
#     echo $src
# fi
current_branch=v3.310-hf2-branch

if [[ "$current_branch" =~ ^(v.*-hf.*)-branch$ ]]; then
  echo "${BASH_REMATCH[1]}"
    echo "here"
fi
