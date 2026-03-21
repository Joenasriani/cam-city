#!/usr/bin/env bash
set -e

REPO_URL="$1"
if [ -z "$REPO_URL" ]; then
  echo "Usage: ./push-to-github.sh https://github.com/USERNAME/Cam-City.git"
  exit 1
fi

git init
git branch -M main
git add .
git commit -m "Initial commit: Cam City live-stream puzzle game"
git remote add origin "$REPO_URL"
git push -u origin main
