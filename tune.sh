#!/bin/ksh

target=${1?usage: $0 [directory/]} # Tune into a directory.

watch "ls ${target} | shuf | head -n 25"
