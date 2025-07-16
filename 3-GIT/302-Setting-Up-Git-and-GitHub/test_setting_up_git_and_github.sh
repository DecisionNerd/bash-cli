#!/bin/bash
# Test script for 302-Setting-Up-Git-and-GitHub

set -e

# 1. Check if git is installed
if ! command -v git > /dev/null; then
  echo "git is not installed. Please install git."; exit 1
fi

echo "git is installed."

# 2. Check git configuration
NAME=$(git config --global user.name || true)
EMAIL=$(git config --global user.email || true)
if [[ -z "$NAME" || -z "$EMAIL" ]]; then
  echo "git user.name or user.email not set. Please configure them."; exit 1
fi

echo "git user.name: $NAME"
echo "git user.email: $EMAIL"

echo "Manual: Visit https://github.com and create an account if you haven't already."

echo "All automated tests passed for 302-Setting-Up-Git-and-GitHub. Manual steps may remain." 