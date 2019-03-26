# Changelog

All notable changes to this project will be documented in this file.

## 26/03/2019

- Fixes company name
- Removes Git For Windows last seen version

## 21/03/2019

- Removes sourcelink from build props, can not compile with multiple sources. You should now install
the sourcelink package of your repo provider

## 06/03/2019

- Prevents packaging files that don't have PackageId explictly set leveraging Directory.Build.targets
- Disables SourceLink for non packagable projects
- Moves VS Code workspace settings to proper file
- Supresses warning when using preview releases of Net Core
- Removes framework and runtime identifiers from build path
- Adds dummy target to be updated by GitInfo

## 04/03/2019

- Forced generation of DebugSymbols
- Set Resharper to put attributes in their own line

## 12/02/2019

- Added common gitignore for .net stack
- Added Directory.Build.Props for common nugets and csproj settings
- Added SourceLink only on library projects
- Added default Visual Studio Code settings
