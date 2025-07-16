#!/bin/bash
# Test script for 304-Cloning-a-Repository

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Find a repository on GitHub, copy its URL, and run: git clone <repository-url>. Then cd into the folder and list files."

echo "All automated tests passed for 304-Cloning-a-Repository. Manual steps may remain." 