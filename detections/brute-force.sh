#!/bin/bash

LOG="$HOME/soc-lab/logs/auth-practice.log"
THRESHOLD=5
ALERT_FOUND=0

RESULTS=$(grep "Failed password" "$LOG" | awk '{for(i=1;i<=NF;i++) if($i=="from") print $(i+1)}' | sort | uniq -c)

echo "=== Brute Force Check ==="

while read -r COUNT IP; do
    if [ "$COUNT" -ge "$THRESHOLD" ]; then
        echo "ALERT: Possible brute-force activity detected"
        echo "Source IP: $IP"
        echo "Failed attempts: $COUNT"
        ALERT_FOUND=1
    fi
done <<< "$RESULTS"

if [ "$ALERT_FOUND" -eq 0 ]; then
    echo "No brute-force activity detected"
fi
