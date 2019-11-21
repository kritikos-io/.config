# dotfiles

A collection of my personal configuration for system elements and my software of choice, meant to be added as a submodule under development repos.
**Windows machines need to have git configured in order to be able to handle symlinks!**

## Usage

For development and common standards symlink to the root of your repo the following files:

- .editorconfig
- .gitignore
- .Directory.Build.props

Additionally, symlink _Resharper.sln.DotSettings_ next to your solution file, and replace _Resharper_ on the link target filename with the name of your solution file.

In order to avoid duplicate PackageReference definitions and unpredictable behavior, the following nugets should be handled by [Directory.Build.props][buildProps] **only**:

- coverlet.msbuild
- Microsoft.CodeAnalysis.FxCopAnalyzers
- SerilogAnalyzer
- SmartanAlyzers.ExceptionAnalyzer
- SmartAnalyzers.MultithreadingAnalyzer
- Microsoft.SourceLink.Bitbucket.Git
- Microsoft.SourceLink.GitHub
- Microsoft.SourceLink.GitLab
- StyleCop.Analyzers

## Visual Studio Code Integration

- Symlink .vscode/settings.json to your repo root .vscode folder
- Symlink Dotnet.code-workspace to the root of your repo

## Benefits

- Centralized .gitignore for .Net environment
- Common editor settings (for EditorConfig compatible editors)
- Automatic addition of stylecop, stylecop configuration and roslyn ruleset on all .net projects under repo
- Embedded Github/Gitlab sourcelink for packable projects under repo
- Resharper configuration that follows stylecop/ruleset configuration

[buildProps]: Directory.Build.props
