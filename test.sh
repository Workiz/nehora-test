#!/bin/bash
# exists=`git show-ref refs/heads/rc3gf.336-branch`
# if [ -n "$exists" ]; then
#     echo 'branch exists!'
# fi
# comments are cool, yes they are
GITHUB_REF="v3.343-hf-branch"
if [[ "$GITHUB_REF" =~ ^v[0-9]\.([0-9]*)?(-hf[0-9]*)?-branch$ ]]; then  
            branch_number=${BASH_REMATCH[1]}
        fi
        echo "branch_number $branch_number"
        rc_number=`expr $branch_number + 1`
        echo "rc_number $rc_number"
