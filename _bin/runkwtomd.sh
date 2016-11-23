#!/bin/sh

for f in ../_posts/*.kwickxml; do
	echo $f ...
	perl kwtomd.pl < $f | kramdown 2>&1 > /dev/null
done

# grep -B 1 "^Warning" report.txt
