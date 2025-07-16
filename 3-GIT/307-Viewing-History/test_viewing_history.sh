#!/bin/bash
# Test script for 307-Viewing-History

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Run git log in your repository, identify the most recent commit message and its ID, and note the author and date."

echo "All automated tests passed for 307-Viewing-History. Manual steps may remain." 