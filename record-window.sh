#!/bin/bash

id=$(xwininfo | grep id: | while read junk junk2 idcolon id xs; do echo $id; done)
frame=1

echo "Hit ^C (Control C) to stop recording..."

while true; do
      echo -n .
      xwd -id ${id} > tmp/${frame}.xwd
      convert tmp/${frame}.xwd var/${frame}.jpg
      frame=$((frame+1))
      sleep .17
done

