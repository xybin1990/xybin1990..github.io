#!/usr/bin/env sh
# 确保脚本抛出遇到的错误
set -e
cd public

msg='来自github action的自动部署'
githubUrl=https://xybin1990:${GITHUB_TOKEN}@github.com/xybin1990/xybin1990.github.io.git

git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl main:gh-pages # 推送到github

cd -
rm -rf public