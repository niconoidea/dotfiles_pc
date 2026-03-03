read one five fifteen rest < /proc/loadavg
printf '{"text":"LOAD %s %s %s","tooltip":"Load average\\n1m: %s\\n5m: %s\\n15m: %s"}\n' \
  "$one" "$five" "$fifteen" "$one" "$five" "$fifteen"


