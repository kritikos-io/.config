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

To update them, tick their verison numbers in the [Directory.Build.props][buildProps] file and reload the solution.

## Azure DevOps integration

The [azure-pipelines.yml][pipeline] file is preconfigured for dotnet projects with the following services:

- SonarCloud
- Coveralls
- CodeCov
- Nuget.org publishing

In order to make it work, copy it to the root of your project, replace the value of ```SONAR_PROJECT``` at the pipeline variables section and make sure your pipeline has the following variables set on the DevOps portal:

- GITHUB_KEY: GitHub access token
- SONAR_ORG: SonarCloud organization
- SONAR_KEY: SonarCloud token
- SONAR_URL: SonarCloud host url
- CODECOV_KEY: **REPO SPECIFIC** access token
- COVERALLS_KEY: **REPO SPECIFIC** access token

## Visual Studio Code Integration

- Symlink .vscode folder to your repo root .vscode folder
- Symlink Dotnet.code-workspace to the root of your repo

## Benefits

- Centralized .gitignore for .Net environment
- Common editor settings (for EditorConfig compatible editors)
- Automatic addition of stylecop, stylecop configuration and roslyn ruleset on all .net projects under repo
- Embedded Github/Gitlab sourcelink for packable projects under repo
- Resharper configuration that follows stylecop/ruleset configuration

[buildProps]: Directory.Build.props
[pipeline]: .config/azure-pipelines.yml
