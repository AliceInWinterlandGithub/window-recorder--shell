#!/bin/ksh

amount=${1-10}

find tmp/ -name '*.xwd' | 
    shuf |
    head -n ${amount} |
    while read file; do
    convert ${file} var/$(basename ${file}.png) &&
	rm -v ${file}
done
