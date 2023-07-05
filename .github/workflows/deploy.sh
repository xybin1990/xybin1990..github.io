#!/usr/bin/env sh
# 确保脚本抛出遇到的错误
set -e
echo "[pwd]"
pwd
cd public
echo "[pwd]"
pwd

msg='来自github action的自动部署'
githubUrl=https://xieyuanbin1:${GITHUB_TOKEN}@github.com/xieyuanbin1/xieyuanbin1.github.io.git

git init
echo "[branch]"
git branch
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages # 推送到github

cd -
echo "[pwd]"
pwd
rm -rf public
echo "[list all]"
ls -al
