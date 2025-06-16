#!/bin/bash

count=1
echo "Script started at: $(date '+%Y-%m-%d %H:%M:%S')"

while true; do
  echo "=== Run #$count ==="

  echo "Creating file (120gb)..."
  dd if=/dev/urandom of="$HOME/largejunkfile" bs=1m count=120000
  echo "Junk file created"
  sleep 10

  echo "Deleting file..."
  rm -f "$HOME/largejunkfile"

  echo "Cycle #$count complete."
  ((count++))
done
