#!/bin/bash

IOC="$1"

if [ -z "$IOC" ]; then
    echo "Usage: ioc-check.sh <domain-or-IP>"
    exit 1
fi

echo "=== IOC Investigation ==="
echo "Indicator: $IOC"
echo

if [[ "$IOC" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "=== Reverse DNS ==="
    dig +short -x "$IOC"
else
    echo "=== DNS Results ==="
    echo "IPv4:"
    dig +short A "$IOC"
    echo
    echo "IPv6:"
    dig +short AAAA "$IOC"
fi

echo
echo "=== WHOIS Information ==="
whois "$IOC" | grep -Ei "OrgName|Organization|Country|NetName|Registrar|Creation Date|Registry Expiry Date" | head -20
