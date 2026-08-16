#!/bin/bash

REPORT="$HOME/soc-lab/logs/detection-report-$(date +%Y-%m-%d_%H-%M-%S).txt"

{
    echo "=== SOC Detection Check ==="
    echo "Run time: $(date)"
    echo
    "$HOME/soc-lab/detections/failed-auth.sh"

    echo

    "$HOME/soc-lab/detections/brute-force.sh"

    echo

    "$HOME/soc-lab/detections/new-listeners.sh"

} | tee "$REPORT"

echo
echo "Report saved to: $REPORT"
