#!/bin/bash

#仓库名
REMOTE_REPOSITORY_SITE="https://github.com/tiaxiaoer/mit6.s081-exercise.git"
REMOTE_REPOSITORY_NAME="my_lab"
#要提交的分支
BRANCH_NAME=$1
#要提交的文件名
FILE_COMMIT_NAME=$2
#提交的消息
COMMIT_MESSAGE=$3

echo "git status: "
git status
echo "git add: "
git add "$FILE_COMMIT_NAME"
echo "git commit: "
git commit -m "$COMMIT_MESSAGE"
echo "git push: "
git push "$REMOTE_REPOSITORY_NAME" "$BRANCH_NAME":"$BRANCH_NAME"
