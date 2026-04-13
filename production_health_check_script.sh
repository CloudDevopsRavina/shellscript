#!/bin/bash

SERVICES="nginx docker jenkins"

for service in $SERVICES
do
    systemctl is-active --quiet $service

    if [ $? -eq 0 ]; then
        echo "$service is RUNNING ✔"
    else
        echo "$service is DOWN ❌ - Restarting"
        systemctl restart $service
    fi
done
