#!/usr/bin/env bash
set -euo pipefail

bytes_base64=$(openssl rand -base64 10)
bytes_count=$(base64 -d <<<"$bytes_base64" | wc -c)
bytes_base64_count=${#bytes_base64}
combined_count=$((bytes_count + bytes_base64_count))

echo "Combined count: $combined_count"
echo "Bytes count: $bytes_count"
echo "Bytes base64: $bytes_base64"
echo "Bytes base64 count: $bytes_base64_count"
