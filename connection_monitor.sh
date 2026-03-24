#!/usr/bin/env bash

while true
do
    clear
    echo "===== Connection Monitor ====="
    echo

    # Count TCP connections
    TCP_CONN=$(ss -t | tail -n +2 | wc -l)

    echo "Active TCP connections: $TCP_CONN"
    echo

    echo "Top processes using sockets:"

    PROCESSES=$(ss -tunap 2>/dev/null \
        | grep -oP 'users:\(\(".*?"' \
        | cut -d'"' -f2 \
        | sort \
        | uniq -c \
        | sort -nr \
        | head)

    if [[ -z "$PROCESSES" ]]; then
        echo "  No active socket processes"
    else
        echo "$PROCESSES" | awk '{printf "  %-10s %s\n", $2, $1}'
    fi

    echo
    echo "Updated: $(date +%H:%M:%S)"

    sleep 2
done
