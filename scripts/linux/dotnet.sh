#!/bin/env bash

files=("Directory.Build.props" "Directory.Build.targets" "dotnet.ruleset" "stylecop.json" "xunit.runner.json")
target=$(cd ../../.. && pwd)
dirname=$(basename $target)

./base.sh

for file in "${files[@]}"
do
  ln --force --relative --symbolic $target/.config/$file $target/$file
done

ln --force --relative --symbolic $target/.config/Resharper.sln.DotSettings $target/$dirname.sln.DotSettings
ln --force --relative --symbolic $target/.config/.gitignore-dotnet $target/.gitignore
