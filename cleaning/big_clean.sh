#!/bin/bash

#Keeps track of the path to the cleaning folder
here=$(pwd)

#Makes a temp directory and keeps its location
TMPDIR=$(mktemp -d) || exit 1

#Unzips and copies over the files of the inputed directory into the temp directory
tar -zxvf "$1" -C "$TMPDIR"

#Finds and deletes any file containing the line 'DELETE ME!'
grep -rl "DELETE ME!" "$TMPDIR" | xargs rm -f

cd "$TMPDIR" || exit
#Copies the files over into a new archive
tar -czvf /"$here"/cleaned_"$1" "$(basename "$1" .tgz)"
