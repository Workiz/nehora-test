#!/bin/bash
# exists=`git show-ref refs/heads/rc3gf.336-branch`
# if [ -n "$exists" ]; then
#     echo 'branch exists!'
# fi
# comments are cool
# if [[ "rc3.380-branch" =~ ^(rc[0-9]\.[0-9]*)?(-hf[0-9]*)?-branch$ ]]
#     then
        
#         echo "${BASH_REMATCH[1]}" 
# fi

tag="123"
branch="123-branch"
# curl -X POST -H "Accept: application/vnd.github+json" \
# -H "Authorization: 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" \
# https://api.github.com/repos/Workiz/nehora-test/dispatches \
# -d '{"event_type":"train","client_payload":{"tag":"9380","branch": "dnsk" }}'
curl -X POST -H "Accept: application/vnd.github+json" \
        -H "Authorization: Bearer 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" \
        https://api.github.com/repos/Workiz/nehora-test/dispatches \
        -d '{"event_type":"train","client_payload":{"tag":"'$tag'" , "branch" : "fhdj" }}'