#!/bin/sh

if [ "$(pgrep nordvpn)" ]; then
    status=$(nordvpn status 2> /dev/null | grep Status | cut -d ":" -f 2 )

    echo "[ vpn:$status ]"
fi
