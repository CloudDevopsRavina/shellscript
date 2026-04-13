#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

echo "CPU Usage: $CPU%"

if (( $(echo "$CPU > 80" | bc -l) )); then
    echo "High CPU Usage Alert!"
fi
