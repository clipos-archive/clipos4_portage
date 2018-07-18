#!/bin/sh

./eclass_deps.sh | \
	while read class; do 
		cp /usr/portage/eclass/${class}.eclass eclass/
		echo "Adding $class"
	done



