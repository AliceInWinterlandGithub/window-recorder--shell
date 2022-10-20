#!/bin/ksh

rate=${1-6}

ffmpeg -r ${rate} -f image2 -i 'var/%d.jpg' movie.mp4
