#!/bin/bash

id=$(xwininfo | grep id: | while read junk junk2 idcolon id xs; do echo $id; done)
frame=1

while true; do
      echo -n .
      xwd -id ${id} > tmp/${frame}.xwd
      convert tmp/${frame}.xwd var/${frame}.jpg
      frame=$((frame+1))
      sleep .01
done
