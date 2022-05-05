#!/bin/bash

list=$(ls *.csv)

for file in $list; do
  out="${file%.*}-filtered.csv"
  sed -n -e '/^SECRET\|^ERROR\|^ENTROPY\|^EXE\|^ENCRYPTED/p' $file > $out
done
