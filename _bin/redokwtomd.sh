#!/bin/sh

output=$1

post=`basename $output | tr - _ | sed -e 's|.md$|.kwickxml|' -e 's|\([0-9][0-9][0-9][0-9]\)_\([0-9][0-9]\)_\([0-9][0-9]\)_\(.*\)|\1-\2-\3-\4|'`

git show mtexport:_posts/$post | perl -I _bin _bin/kwtomd.pl > _posts/$output
