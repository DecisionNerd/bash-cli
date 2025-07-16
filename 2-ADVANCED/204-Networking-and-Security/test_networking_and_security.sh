#!/bin/bash
# Test script for 204-Networking-and-Security

set -e

# 1. Test SSH (manual verification required)
echo "Manual: Test SSH by running: ssh localhost (if enabled)"

# 2. Test SCP (manual verification required)
echo "Manual: Test SCP by running: scp file.txt localhost:/tmp/ (if enabled)"

# 3. Test port forwarding (manual verification required)
echo "Manual: Test port forwarding by running: ssh -L 8080:localhost:80 localhost (if enabled)"

# 4. Test network diagnostics
TRACEROUTE_OUT=$(traceroute -m 1 127.0.0.1 2>/dev/null | head -n 1)
if [[ "$TRACEROUTE_OUT" != *"traceroute to"* ]]; then
  echo "traceroute test failed"; exit 1
fi
MTR_EXISTS=$(command -v mtr || true)
if [[ -n "$MTR_EXISTS" ]]; then
  echo "mtr is installed; run: mtr 127.0.0.1 (manual)"
else
  echo "mtr not installed; skipping mtr test."
fi
DIG_OUT=$(dig localhost +short 2>/dev/null)
echo "dig output: $DIG_OUT"

echo "All automated tests passed for 204-Networking-and-Security. Manual steps may remain." 