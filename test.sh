json=$(curl --location --request POST 'https://infra-api.workiz.com/github/get_new_release_pr/' \
        --header 'Content-Type: application/json' \
        --header 'WORKIZ_INFRA_AUTH: TotF2Yr6r1ju9ZHp' )


# Utility function to parse PRs
parse_prs() {
  local prs="$1"
  echo "$prs" | jq -r '.[] | "• <\(.url)|\(.message)>  by @\(.github_actor)  \\n "'
}

# Extract frontend and backend PRs
frontend_prs=$(echo $json | jq '.frontend.prs')
backend_prs=$(echo $json | jq '.backend.prs')

# Extract tag values
new_tag=$(echo $json | jq -r '.frontend.new_tag')
last_tag=$(echo $json | jq -r '.frontend.last_tag')

# Generate message
msg=$(echo -e ":react: *frontend* \n *Release candidate* (from ${last_tag} to ${new_tag}): \n$(parse_prs "$frontend_prs")\n :php: *backend* \n *Release candidate* (from ${last_tag} to ${new_tag}): \n$(parse_prs "$backend_prs")")

payload=$(jq -n --arg msg "$msg" --arg channel "nehoramoshe" '{
  "msg": $msg,
  "success": true,
  "channel": $channel,
  "workiz_logo": false,
  "links": [{"name": "View on Github", "link": ""}]
}')


# Send the message to Slack
curl --location --request POST 'https://infra-api.workiz.com/slack/send_slack_msg/' \
    --header 'WORKIZ_INFRA_AUTH: TotF2Yr6r1ju9ZHp' \
    --header 'Content-Type: application/json' \
    --data-raw "$payload"