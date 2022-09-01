#!/bin/bash
# exists=`git show-ref refs/heads/rc3gf.336-branch`
# if [ -n "$exists" ]; then
#     echo 'branch exists!'
# fi

status=$(curl --location --request POST 'https://infra-api.workiz.com/releaseProgress/get_train_status/')
if [[ "$status" == "false" ]]; then
    echo "Error - train is lock now"
    exit 1
fi