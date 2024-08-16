Write-Output "$(Get-Date) Gitlab Clean Up Script"
Set-Location "c:\"
$curPath = Get-Location

#Delete .git config
Get-ChildItem -path "c:\gitlab" -Directory -Recurse -Filter ".git" -Hidden | Remove-Item -Force -Recurse
Get-ChildItem -path "c:\gitlab" -Recurse -Filter ".gitignore" -Hidden | Remove-Item -Force -Recurse
Get-ChildItem -path "c:\gitlab" -Recurse -Filter "README.md" -Hidden | Remove-Item -Force -Recurse

