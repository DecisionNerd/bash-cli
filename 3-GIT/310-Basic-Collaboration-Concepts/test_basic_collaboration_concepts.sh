#!/bin/bash
# Test script for 310-Basic-Collaboration-Concepts

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Fork a repository on GitHub, clone your fork, make a change, push it, and open a pull request to the original repository."

echo "All automated tests passed for 310-Basic-Collaboration-Concepts. Manual steps may remain." 