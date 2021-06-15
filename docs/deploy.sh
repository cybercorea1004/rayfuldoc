#!/bin/bash

# 현재 프로젝트 명. ex) Motti
project_name=${PWD##*/}
echo ${project_name}
# Local Maven Repository 경로
local_rayful_maven_repo='/Users/sunrise/docgit/rayfuldoc'
cp -r * ${local_rayful_maven_repo}/docs

# Local Maven Repository로 이동
cd ${local_rayful_maven_repo}

# git add & commit & push 진행
# deploy key를 등록했기 때문에 id, pw 입력 없이 진행 가능
git status
git add .
git status
git commit -am "release new version of ${project_name}"
git push origin main 
