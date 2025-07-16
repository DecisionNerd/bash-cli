#!/bin/bash
# Test script for 205-Advanced-Package-Management

set -e

# 1. Simulate build from source (manual verification required)
echo "Manual: To test building from source, download a small project and run: ./configure && make && sudo make install"

# 2. Test apt-cache (if available)
if command -v apt-cache > /dev/null; then
  APT_CACHE_OUT=$(apt-cache search bash | grep bash || true)
  if [[ -z "$APT_CACHE_OUT" ]]; then
    echo "apt-cache test failed"; exit 1
  fi
  echo "apt-cache test passed."
else
  echo "apt-cache not available; skipping test."
fi

# 3. Test apt-mark (if available)
if command -v apt-mark > /dev/null; then
  sudo apt-mark showhold > /dev/null 2>&1 || true
  echo "Manual: To test apt-mark, run: sudo apt-mark hold <package> and verify with sudo apt-mark showhold."
else
  echo "apt-mark not available; skipping test."
fi

echo "All automated tests passed for 205-Advanced-Package-Management. Manual steps may remain." 