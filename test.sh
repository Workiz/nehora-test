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

# last_tag=$(git tag | sort -V | grep -i "^v[0-9]\.[0-9]*$" | tail -1)  
#         last_tag="${last_tag:1}"
#         echo "$last_tag"
#         IFS='.' read -ra tag_parts <<< "$last_tag"
#         part2=`expr ${tag_parts[1]} + 1`
#         new_tag="${tag_parts[0]}.$part2"
#         echo "new tag $new_tag"
#         branch="rc$new_tag-branch"
#         echo "branch $branch"
# current_branch="rc3.329-branch"
# if [[ ! "$current_branch" =~ ^(rc.*)-branch$ ]]; then
#           echo "branch must be rc branch"
#           exit 1
#         fi

# if [[ "v3.333" =~ ^v[0-9]+\.[0-9]+$ ]]; then
#   echo "here"
# fi

# NOTE=$(curl  -X POST  -H "Accept: application/vnd.github+json"   -H "Authorization: token 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"   https://api.github.com/repos/Workiz/backend/releases/generate-notes -d '{"tag_name":"v3.337"}' |  jq .body)
# NOTE=${NOTE//\'/}
# NOTE=${NOTE//\*/•}
# echo $NOTE

# LAST_RC_TAG=$(git tag | sort -V | grep -i "^v[0-9]\.[0-9]*$" | tail -1) 
# if [[ "$LAST_RC_TAG" =~ ^v([0-9]\.[0-9]*)$ ]]; then
#   echo "${BASH_REMATCH[1]}"
#   git branch --delete rc${BASH_REMATCH[1]}-branch
# fi
# git branch --delete $LAST_RC_TAG-branch

LAST_TAGS=$(git tag | sort -V | grep -i "^v[0-9]\.[0-9]*$" | tail -2) 

# IFS=$'\n' read -rd '' -a LAST_TAGS <<<"$LAST_TAGS"

# # IFS='/\n' read -ra RES <<< "$LAST_TAGS"# echo "$LAST_TAGS"
# # mails=$(echo $IN | tr ";" "\n")

# # echo "LAST_TAGS $RES"
# echo "1 ${LAST_TAGS[0]}"
# echo "2 ${LAST_TAGS[1]}"

echo "last tags $LAST_TAGS"
if [[ "$LAST_TAGS" =~ ^(v.*).*(v.*)$ ]]; then
  echo "1 ${BASH_REMATCH[1]}"
  echo "2 ${BASH_REMATCH[2]}"
fi
echo "1 ${BASH_REMATCH[1]}"