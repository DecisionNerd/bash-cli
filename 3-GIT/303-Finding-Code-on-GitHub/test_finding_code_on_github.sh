#!/bin/bash
# Test script for 303-Finding-Code-on-GitHub

set -e

# 1. Check for internet connectivity
if ! ping -c 1 github.com > /dev/null 2>&1; then
  echo "No internet connectivity or github.com is unreachable."; exit 1
fi

echo "Internet connectivity to github.com confirmed."

echo "Manual: Go to https://github.com, search for a project, and review its README, files, and issues. Note the number of stars and contributors."

echo "All automated tests passed for 303-Finding-Code-on-GitHub. Manual steps may remain." 