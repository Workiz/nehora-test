#!/bin/bash
exists=`git show-ref refs/heads/rc3gf.336-branch`
if [ -n "$exists" ]; then
    echo 'branch exists!'
fi