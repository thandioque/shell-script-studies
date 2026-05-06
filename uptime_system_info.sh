#!/usr/bin/env bash

# uptime_system_info.sh - Reports system uptime in a human-readable format
# Maintainer: Thandiwe Assis

# uptime -p: Displays uptime in 'pretty' format.
# sed "s/up //": Uses a stream editor to remove only the leading "up " string.
uptime_system=$(uptime -p | sed "s/up //")

# Standard SRE practice: clear, concise output.
printf "Hello %s, the system has been active for: %s\n" "$USER" "$uptime_system"