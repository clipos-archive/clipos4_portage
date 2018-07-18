#!/bin/bash

find . -name "*.ebuild" -o -name "*.eclass" | \
	xargs grep -s "^inherit" | \
		cut -d":" -f 2 | \
		sed -e 's/^[^ ]* //; s/ /\n/g' | \
		sort | uniq > eclass_list.txt


cat eclass_list.txt | while read class ; do
	test -f eclass/${class}.eclass || echo "$class"
done
