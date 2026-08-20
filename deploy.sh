#!/usr/bin/env bash

#       bash "/Users/hao/郭浩/郭浩个人/个人网站/deploy.sh"





set -e

cd "/Users/hao/郭浩/郭浩个人/个人网站"

DEPLOY_TIME="$(date '+%Y-%m-%d %H:%M:%S')"
BACKUP_TIME="$(date '+%Y%m%d-%H%M%S')"

rm -rf .git

git init -b main
git remote add origin "https://github.com/haokwok2002/haokwok2002.github.io.git"
git add --all
git commit -m "deploy: $DEPLOY_TIME"
git push --set-upstream origin main --force
