#!/usr/bin/env sh
# 确保脚本抛出遇到的错误
set -e
echo "pwd"
pwd
cd public
echo "pwd"
pwd

msg='来自github action的自动部署'
githubUrl=https://xybin1990:${GITHUB_TOKEN}@github.com/xybin1990/xybin1990.github.io.git

git init
git branch
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages # 推送到github

cd -
echo "pwd"
pwd
rm -rf public
ls -al
