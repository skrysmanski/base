#!/usr/bin/env pwsh

Write-Host -ForegroundColor Cyan 'Removing ".git"...'
Remove-Item "$PSScriptRoot/.git" -Recurse -Force

Write-Host -ForegroundColor Cyan 'Removing "README.md"...'
Remove-Item "$PSScriptRoot/README.md"

Write-Host -ForegroundColor Cyan 'Removing "init.ps1"...'
Remove-Item "$PSScriptRoot/init.ps1"

Write-Host -ForegroundColor Cyan 'Removing "docs/"...'
Remove-Item "$PSScriptRoot/docs" -Recurse -Force

Write-Host
Write-Host -ForegroundColor Cyan 'Initializing new Git repository...'
& git init "$PSScriptRoot"

Write-Host
Write-Host -ForegroundColor Cyan 'Adding skeleton files...'
& git add *
& git commit -m 'Added repository skeleton'

Write-Host
Write-Host -ForegroundColor Green 'Done'
