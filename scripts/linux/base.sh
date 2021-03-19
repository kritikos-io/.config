#!/bin/env bash

files=(".editorconfig" "GitVersion.yml")
target=$(cd ../../.. && pwd)
dirname=$(basename $target)

for file in "${files[@]}"
do
  ln --force --relative --symbolic $target/.config/$file $target/$file
done

ln --force --relative --symbolic $target/.config/Dotnet.code-workspace $target/$dirname.code-workspace
