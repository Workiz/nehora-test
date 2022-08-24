#!/bin/bash
<<<<<<< HEAD

# echo "out"
# if [[ "[DEVOPS-369]" =~ \[(.*)\](.*) ]]; then
#     echo "here"
#     src=${BASH_REMATCH[1]}
#     echo $src
# fi
current_branch=h3.310-hf2-branch

if [[ "$current_branch" =~ v.*-hf.*-branch ]]; then
    echo "here"
=======
exists=`git show-ref refs/heads/rc3gf.336-branch`
if [ -n "$exists" ]; then
    echo 'branch exists!'
>>>>>>> e6b0d0e1078509f73bc229da96390189b4966d93
fi