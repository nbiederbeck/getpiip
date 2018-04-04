#!/bin/bash
TOKEN="475494777:AAFxuvbrh_zb2DGrlx0RYoi9b2XJoDWgKNE"
CHAT_ID=322086570
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

IP=$(ip a | awk '/inet / {print $2}' | awk -F '/' '!/^127/ {print $1}')

function post_message {
    curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$1" > /dev/null
}

MESSAGE="Raspberry Pi IP: $IP"

post_message "$MESSAGE"
echo "$MESSAGE"
