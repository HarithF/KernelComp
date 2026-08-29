#!/usr/bin/env bash
set -euo pipefail

for dir in */; do
  dir="${dir%/}"
  if [[ "$dir" =~ ^[0-9]{2}_.* ]]; then
    mkdir -p "$dir/torch_ref"
    echo "Created $dir/torch_ref"
  fi
done
