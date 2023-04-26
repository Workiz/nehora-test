train_status=$(curl --location --request GET 'https://infra-api.workiz.com/releaseProgress/get_train_status/' \
        --header 'WORKIZ_INFRA_AUTH: ${{ secrets.WORKIZ_INFRA_AUTH }}' )
        status=$(echo $train_status | jq .'status' | tr -d '"')
        reason=$(echo $train_status | jq .'reason' | tr -d '"')
        user=$(echo $train_status | jq .'user' | tr -d '"')
        echo $status
        echo $reason
        echo $user
        if $status ; then
            echo -e "\e[1;31m [ERROR] - train is lock now"
            export NOTE=""
            exit 1
        fi