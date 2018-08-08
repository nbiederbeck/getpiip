#!/bin/bash
TOKEN="556288221:AAEOCnxK-6F2pfZXbXPTJMDtX-i9iEbLG_Q"
CHAT_ID=$CHAT_ID
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

IP=$(ip a | awk '/inet / {print $2}' | awk -F '/' '!/^127/ {print $1}')

function post_message {
    curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$1" > /dev/null
}

post_message "Hi, this is $(hostname) and this is my IP: $IP"
echo "$IP"
