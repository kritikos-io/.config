# Changelog

All notable changes to this project will be documented in this file.

## 06/03/2019

- Prevents packaging files that don't have PackageId explictly set leveraging Directory.Build.targets
- Disables SourceLink for non packagable projects
- Moves VS Code workspace settings to proper file

## 04/03/2019

- Forced generation of DebugSymbols
- Set Resharper to put attributes in their own line

## 12/02/2019

- Added common gitignore for .net stack
- Added Directory.Build.Props for common nugets and csproj settings
- Added SourceLink only on library projects
- Added default Visual Studio Code settings
