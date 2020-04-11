#!/bin/bash

# Template for a one-shot command
# See following resources for more options
#   1. broku_args.json
#   2. https://developer.roku.com/docs/developer-program/debugging/external-control-api.md

    # Perform a keypress
curl -d '' http://192.168.1.98:8060/keypress/power

    # Launch an app
    # Run in terminal to find app IDs: 
    #  curl https://192.168.1.98:8060/query/apps
# curl http://192.168.1.98:8060/launch/2285

    # Switch to TV input
# curl http://192.168.1.98:8060/launch/tvinput.hdmi1
