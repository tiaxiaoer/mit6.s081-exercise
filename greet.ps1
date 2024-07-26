#!/usr/bin/env pwsh

param (
    [string]$name = "World",
    [int]$count = 1
)

# 输出参数值
Write-Output "Name: $name"
Write-Output "Count: $count"

# 循环输出问候语
for ($i = 1; $i -le $count; $i++) {
    Write-Output "Hello, $name! ($i)"
}
