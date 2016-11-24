#!/bin/sh

# sed '1 { /^---/ { :a N; /\n---/! ba; d} }'

parallel -k 'echo {} && (perl kwtomd.pl < {} | sed "1 { /^---/ { :a N; /\n---/! ba; d} }" | kramdown -i GFM --no-hard-wrap) 2>&1 > /dev/null' ::: ../_posts/*.kwickxml |
	grep -B 1 -v "^../_posts/" | tee report-filtered.txt
