#!/bin/bash
# Test script for 312-Recap-and-Next-Steps

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

echo "Manual: Review the key concepts from this module, visit https://docs.github.com/ for more help, and plan your next steps for practice."

echo "All automated tests passed for 312-Recap-and-Next-Steps. Manual steps may remain." 