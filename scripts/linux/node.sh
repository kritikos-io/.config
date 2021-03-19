#!/bin/env bash

files=("gulpfile.js")
target=$(cd ../../.. && pwd)
dirname=$(basename $target)

./base.sh

for file in "${files[@]}"
do
  ln --force --relative --symbolic $target/.config/$file $target/$file
done
