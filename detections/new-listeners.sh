#!/bin/bash

BASELINE="$HOME/soc-lab/logs/listening-baseline.txt"
CURRENT=$(mktemp)

sudo ss -tulnH | sort > "$CURRENT"

NEW=$(comm -13 "$BASELINE" "$CURRENT")

if [ -n "$NEW" ]; then
    echo "ALERT: New listening port detected"
    echo "$NEW"
else
    echo "No new listening ports detected"
fi

rm "$CURRENT"
