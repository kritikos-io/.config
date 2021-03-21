$files = @(
  'Directory.Build.props',
  'Directory.Build.targets',
  'dotnet.ruleset',
  'stylecop.json',
  'xunit.runner.json'
)
$links = $(Get-Item .).Parent.Parent
$target = $links.Parent
$dirName = $target.Name

# ./base.ps1

New-Item -Path $target\.gitignore -ItemType SymbolicLink -Value .config\.gitignore-dotnet -Force
New-Item -Path $target\$dirName.sln.DotSettings -ItemType SymbolicLink -Value .config\Resharper.sln.DotSettings -Force

foreach($file in $files){
  New-Item -Path $target\$file -ItemType SymbolicLink -Value ".config\$file" -Force
}
