#!/bin/bash

# https://gist.github.com/hugorodgerbrown/5317616

FILES=*.md
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.adoc"
  `pandoc -f gfm -t asciidoc -s $f -o $filename.adoc`
  # uncomment this line to delete the source file.
#  rm $f
done
