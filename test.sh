#!/bin/bash
# exists=`git show-ref refs/heads/rc3gf.336-branch`
# if [ -n "$exists" ]; then
#     echo 'branch exists!'
# fi
# comments are cool
status=$(curl --location --request GET 'https://infra-api.workiz.com/releaseProgress/get_train_status/' \
--header 'WORKIZ_INFRA_AUTH: TotF2Yr6r1ju9ZHp' | jq .'status')
echo "$status"
if ! $status ; then
    echo "Error - train is lock now"
    exit 1
fi
