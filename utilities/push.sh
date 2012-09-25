#! /bin/bash

# ---------------------------------------------------------------
# Simple script for Pushover.net
# ---------------------------------------------------------------
#
# Simple script for pushing message to Pushover.net, which 
# in turn, sends push notification to registered mobile
# devices. Why? Cause it supports BOTH Android & iOS
#
# Visit http://pushover.net
#
# ---------------------------------------------------------------

echo "What would you like to push?"
read message

token=abc123 #application token
user=abc123 #user key
url=https://api.pushover.net/1/messages.json
#url=https://api.pushover.net/1/users/validate.json #dry-run URL for testing
device=Nexus
title="Push-script notification"

curl \
    -F "token=$token"     \
    -F "user=$user"       \
    -F "title=$title"     \
    -F "message=$message" \
    -F "device=$device"   \
    "$url"
