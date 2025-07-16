#!/bin/bash
# Test script for 301-Introduction-to-Version-Control-and-Git

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Visit https://github.com and search for a popular open-source project. Note the number of contributors."

echo "All automated tests passed for 301-Introduction-to-Version-Control-and-Git. Manual steps may remain." 