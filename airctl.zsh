#!/usr/bin/env zsh
set -euo pipefail

# Gather wireless interfaces by checking sysfs
interfaces=()
for iface_path in /sys/class/net/*; do
  if [ -d "$iface_path/wireless" ]; then
    interfaces+=("$(basename "$iface_path")")
  fi
done

if [ ${#interfaces[@]} -eq 0 ]; then
  echo "No Wi-Fi adapters detected"
  exit 0
fi

echo "Available Wi-Fi adapters:"
for iface in "${interfaces[@]}"; do
  echo "$iface"
done
