#!/bin/bash
# Test script for 309-Pulling-Updates-from-GitHub

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Make sure your repository is connected to a remote, then run: git pull, and observe any updates or merge messages."

echo "All automated tests passed for 309-Pulling-Updates-from-GitHub. Manual steps may remain." 