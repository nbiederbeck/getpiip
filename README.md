Get Pi IP
=========

Run this script on boot of Raspberry Pi to get current IP address.
Make sure to set or export your `CHAT_ID`!

Usage
-----
- Clone this repo
```bash
git clone https://github.com/nonator/getpiip.git $HOME/getpiip
```

- Export your chat_id
```bash
export CHAT_ID=<YOUR-CHAT-ID>
```
or modify the line in the script.

- To run the script once an internet connection is established, do:
```bash
sudo ln -s $HOME/getpiip/getpiip.sh /etc/network/if-up.d/getip
```

Chat Id
-------
To get your Telegram `CHAT_ID` write [@id_chatbot](https://telegram.me/id_chatbot) '/start'.
