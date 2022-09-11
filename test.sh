#!/bin/bash
# exists=`git show-ref refs/heads/rc3gf.336-branch`
# if [ -n "$exists" ]; then
#     echo 'branch exists!'
# fi
# comments are cool
diff=$(git cherry -v origin/workiz.com)
if [[ "$diff" == "" ]]; then 
    echo "here"
fi
