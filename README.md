Get Pi IP
=========

Run this script on boot of Raspberry Pi to get current IP address.
Make sure to set or export your `CHAT_ID`!

Usage
-----
Clone this repo
```bash
git clone https://github.com/nonator/getpiip.git $HOME/getpiip
```

Export your chat_id
```bash
export CHAT_ID=<YOUR-CHAT-ID>
```
or modify the line in the script.

To run the script at reboot edit your crontab with
```bash
crontab -e
```
and add at the bottom
```bash
@reboot sleep 10; $HOME/getpiip/getpiip.sh
```

Chat Id
-------
To get your Telegram `CHAT_ID` write [@id_chatbot](https://telegram.me/id_chatbot) '/start'.
