#!/bin/bash
TOKEN="556288221:AAEOCnxK-6F2pfZXbXPTJMDtX-i9iEbLG_Q"
CHAT_ID=$CHAT_ID
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
DEL="https://api.telegram.org/bot$TOKEN/deleteMessage"

IP=$(ip a | awk '/inet / {print $2}' | awk -F '/' '!/^127/ {print $1}')

function send_message {
    curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$1" \
        | awk -F ':' '{print $4}' \
        | awk -F ',' '{print $1}' > .id
}

function delete_last_message {
    curl -s -X POST $DEL -d chat_id=$CHAT_ID -d message_id=$(cat .id) > /dev/null
}

delete_last_message
send_message "Hi, this is $(hostname) and this is my IP: $IP"
