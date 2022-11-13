#!/bin/bash
# exists=`git show-ref refs/heads/rc3gf.336-branch`
# if [ -n "$exists" ]; then
#     echo 'branch exists!'
# fi
# comments are cool
if [[ "rc3.380-branch" =~ ^(rc[0-9]\.[0-9]*)?(-hf[0-9]*)?-branch$ ]]
    then
        
        echo "${BASH_REMATCH[1]}" 
fi