#!/bin/bash

outdir=out
while IFS="" read line; do
dirToMake="$outdir/$(echo "$line"|cut -f 1)"
link="$(echo "$line"|cut -f 2)"
echo $dirToMake
echo $link
mkdir $dirToMake
cat<< EOF > $dirToMake/index.html
<!DOCTYPE html><meta http-equiv=refresh content="0; url=$link">
EOF
done < links.txt
