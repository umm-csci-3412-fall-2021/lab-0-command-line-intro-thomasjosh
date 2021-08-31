#!/bin/bash


TMPDIR=$(mktemp -d) || exit 1

tar -zxvf $1 -C $TMPDIR

grep -r "DELETE ME!" $TMPDIR | xargs rm

