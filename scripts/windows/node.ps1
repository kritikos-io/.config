$links = $(Get-Item .).Parent.Parent
$target = $links.Parent

# ./base.ps1
New-Item -Path $target\gulpfile.js -ItemType SymbolicLink -Value .config\gulpfile.js -Force
