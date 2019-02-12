# dotfiles

A collection of my personal configuration for system elements and my software of choice.

## Usage

> For development and common standards symlink to the root of your repo the following files:
>
> - .editorconfig
> - .gitignore
> - .Directory.Build.props
>
> Additionally, symlink _Resharper.sln.DotSettings_ next to your solution file, and replace _Resharper_ on the link target filename with the name of your solution file.

## Benefits

- Centralized .gitignore for .Net environment
- Common editor settings (for EditorConfig compatible editors)
- Automatic addition of stylecop, stylecop configuration and roslyn ruleset on all .net projects under repo
- Embedded Github/Gitlab sourcelink for packable projects under repo
- Resharper configuration that follows stylecop/ruleset configuration
