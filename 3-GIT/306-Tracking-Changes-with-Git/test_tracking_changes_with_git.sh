#!/bin/bash
# Test script for 306-Tracking-Changes-with-Git

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Make a change to a file, run: git status, git diff, git add <filename>, and git commit -m 'Describe your change'."

echo "All automated tests passed for 306-Tracking-Changes-with-Git. Manual steps may remain." 