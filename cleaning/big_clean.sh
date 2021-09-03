#!/bin/bash

here=$(pwd)
TMPDIR=$(mktemp -d) || exit 1

tar -zxvf $1 -C $TMPDIR

grep -rl "DELETE ME!" $TMPDIR | xargs rm -f

cd $TMPDIR
base='basename $1'
tar -czvf /$here/cleaned_$1 little_dir
