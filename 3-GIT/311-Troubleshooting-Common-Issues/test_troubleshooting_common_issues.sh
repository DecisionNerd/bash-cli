#!/bin/bash
# Test script for 311-Troubleshooting-Common-Issues

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Try to push to a repository you don’t have access to and observe the authentication error. Create a merge conflict by editing the same line in a file on two branches, then merge and resolve the conflict."

echo "All automated tests passed for 311-Troubleshooting-Common-Issues. Manual steps may remain." 