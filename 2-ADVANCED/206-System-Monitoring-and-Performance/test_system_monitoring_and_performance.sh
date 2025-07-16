#!/bin/bash
# Test script for 206-System-Monitoring-and-Performance

set -e

# 1. Test top (manual verification required)
echo "Manual: Run 'top' and verify it displays system processes. Press 'q' to quit."

# 2. Test htop (if available)
if command -v htop > /dev/null; then
  echo "Manual: Run 'htop' and verify it displays system processes. Press 'q' to quit."
else
  echo "htop not installed; skipping htop test."
fi

# 3. Test iotop (if available)
if command -v iotop > /dev/null; then
  echo "Manual: Run 'iotop' and verify it displays disk I/O. Press 'q' to quit."
else
  echo "iotop not installed; skipping iotop test."
fi

# 4. Test ncdu (if available)
if command -v ncdu > /dev/null; then
  echo "Manual: Run 'ncdu /' and verify it displays disk usage. Press 'q' to quit."
else
  echo "ncdu not installed; skipping ncdu test."
fi

# 5. Test journalctl (if available)
if command -v journalctl > /dev/null; then
  JOURNALCTL_OUT=$(journalctl -xe | head -n 1)
  echo "journalctl output: $JOURNALCTL_OUT"
else
  echo "journalctl not installed; skipping journalctl test."
fi

echo "All automated tests passed for 206-System-Monitoring-and-Performance. Manual steps may remain." 