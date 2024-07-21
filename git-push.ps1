#!/usr/bin/env pwsh

#输入变量
<#
    -b 分支
    -f 提交的文件
    -m 提交的信息
#>
param(
    [string]$b,
    [string]$f,
    [string]$m
)

#定义变量
$REMOTE_REPOSITORY_SITE="https://github.com/tiaxiaoer/mit6.s081-exercise.git"
$REMOTE_REPOSITORY_NAME="my_lab"


Write-Output "git status: "
git status
Write-Output "git add: "
git add "$f"
Write-Output "git commit: "
git commit -m "$m"
Write-Output "git push: "
git push "$REMOTE_REPOSITORY_NAME" "$BRANCH_NAME":"$BRANCH_NAME"

#输出