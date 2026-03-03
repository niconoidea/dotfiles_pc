#!/usr/bin/env bash

temp=$(
  sensors 2>/dev/null | awk '
    /^Tctl:/         {v=$2; gsub(/[+°C]/,"",v); print v; exit}
    /^Package id 0:/ {v=$4; gsub(/[+°C]/,"",v); print v; exit}
    /^Core 0:/       {v=$3; gsub(/[+°C]/,"",v); print v; exit}
  '
)

[ -n "$temp" ] || temp="NA"
echo "TEMP ${temp}°C"
