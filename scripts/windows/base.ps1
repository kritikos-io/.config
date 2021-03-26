$files = @(
  '.editorconfig',
  'GitVersion.yml'
)

$links = $(Get-Item .).Parent.Parent
$target = $links.Parent
$dirName = $target.Name

New-Item -ItemType Directory -Force -Path upload
New-Item -ItemType Directory -Force -Path packages

foreach($file in $files){
  New-Item -Path $target\$file -ItemType SymbolicLink -Value ".config\$file" -Force
}

New-Item -Path $target\$dirName.code-workspace -ItemType SymbolicLink -Value .config\Dotnet.code-workspace -Force
