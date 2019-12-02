#!/bin/bash

# https://gist.github.com/hugorodgerbrown/5317616

FILES=*.md
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.tex"
  `pandoc -f gfm -t latex -s $f -o $filename.tex`
  # uncomment this line to delete the source file.
#  rm $f
done
