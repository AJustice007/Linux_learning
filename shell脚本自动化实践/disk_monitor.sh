#!/bin/bash

THRESHOLD=80
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Warning: Disk usage is ${USAGE}%. Threshold is ${THRESHOLD}%."
    # Simulate sending email
    echo "Send alert to admin@example.com"
else
    echo "Disk usage is normal: ${USAGE}%."
fi
