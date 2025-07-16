#!/bin/bash
# Test script for 308-Pushing-Changes-to-GitHub

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Make and commit a change, run: git push, then visit your repository on GitHub to verify the change appears."

echo "All automated tests passed for 308-Pushing-Changes-to-GitHub. Manual steps may remain." 