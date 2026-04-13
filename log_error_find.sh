#!/bin/bash

LOG_FILE="/var/log/app.log"

echo "Checking errors in logs..."

grep -i "error" $LOG_FILE > error_report.txt

echo "Error report generated: error_report.txt"
