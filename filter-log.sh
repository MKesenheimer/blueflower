#!/bin/bash

for file in `ls *.csv`; do
  out="${file%.*}-filtered.csv"
  sed -n -e '/^SECRET\|^ERROR\|^ENTROPY\|^EXE\|^ENCRYPTED/p' > $out
done
