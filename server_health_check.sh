#!/bin/bash

SERVERS="server1 server2 server3"

for i in $SERVERS
do
    ping -c 1 $i > /dev/null

    if [ $? -eq 0 ]; then
        echo "$i is UP"
    else
        echo "$i is DOWN"
    fi
done
