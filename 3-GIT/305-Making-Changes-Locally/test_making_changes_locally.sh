#!/bin/bash
# Test script for 305-Making-Changes-Locally

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Open a file in your cloned repository, make a small change, save it, and run: git status to see the modification."

echo "All automated tests passed for 305-Making-Changes-Locally. Manual steps may remain." 