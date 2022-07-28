#!/bin/bash

# echo "out"
# if [[ "[DEVOPS-369]" =~ \[(.*)\](.*) ]]; then
#     echo "here"
#     src=${BASH_REMATCH[1]}
#     echo $src
# fi

# if [[ "${{github.head_ref}}" =~ ([A-Z]+-[1-9]+).* ]]; then
#             BRANCH_TITEL=${BASH_REMATCH[1]}
#             echo $BRANCH_TITEL
#           fi

# commit_sha=$(curl -X GET "https://api.github.com/repos/Workiz/workiz-actions/commits?per_page=1"  -H "Accept: application/vnd.github+json"    -H "Authorization: token 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" | jq -c '.[]'| jq '.sha')
# echo ${commit_sha}

# workiz_actions_last_tag=$(curl -X GET "https://api.github.com/repos/Workiz/workiz-actions/git/matching-refs/tags/v?per_page=1"  -H "Accept: application/vnd.github+json"    -H "Authorization: token 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" | jq '.[ -1]' | jq '.ref')
# workiz_actions_last_tag="${workiz_actions_last_tag%\"}"
# workiz_actions_last_tag="${workiz_actions_last_tag#\"}"

# IFS='/' read -ra workiz_actions_last_tag <<< "$workiz_actions_last_tag"
# workiz_actions_last_tag="${workiz_actions_last_tag[2]}"

# echo "workiz_actions_last_tag $workiz_actions_last_tag"

# if [[ "v3.123" < "v3.124" ]]; then
#   echo "here"
# fi

last_tag=$(git tag | sort -V | grep -i "^v[0-9]\.[0-9]*$" | tail -1)  
        last_tag="${last_tag:1}"
        echo "$last_tag"
        IFS='.' read -ra tag_parts <<< "$last_tag"
        part2=`expr ${tag_parts[1]} + 1`
        new_tag="${tag_parts[0]}.$part2"
        echo "new tag $new_tag"
        branch="rc$new_tag-branch"
        echo "branch $branch"