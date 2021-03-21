dotnet tool update -g powershell
git submodule update --init

pwsh -File .config/scripts/windows/base.ps1
## Any required environments
pwsh -File .config/scripts/windows/dotnet.ps1
Read-Host
