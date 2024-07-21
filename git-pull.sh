#!/bin/bash

#输入变量

#定义变量
REMOTE_REPOSITORY_SITE="https://github.com/tiaxiaoer/mit6.s081-exercise.git"
REMOTE_REPOSITORY_NAME="origin"
BRANCH=$1

echo "git pull: "
git pull $REMOTE_REPOSITORY_NAME $BRANCH:$BRANCH

