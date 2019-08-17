# Changelog

All notable changes to this project will be documented in this file.

## 17/08/2019

- Enables Nullable Context by default on all projects

## 30/07/2019

- Ruleset now ignores CA2007

## 29/07/2019

- Libman libraries should not be commited to source control
- Removes compiled sass & js assets from source control
- Adds gulpfile.js for common sass/js tasks
- Adds a task to restore node modules
- Adds Microsoft Code Analysis as an analyzer
- Recreates analyzer ruleset

## 24/07/2019

- Adds some minor tweaks for submodules
- Orders gitconfig by configuration group name (apart from [user])

## 23/07/2019

- Ignores VS cache globally

## 07/06/2019

- Sets default file encoding as UTF-8
- Enables submodule recursion by default for git

## 06/06/2019

- Adds new option for default import placement
- Adds Serilog roslyn analysers for common logging errors in .Net projects

## 08/05/2019

- Sanitizes gitconfig as much as possible for Windows/Linux interop

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
