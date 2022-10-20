#!/bin/ksh

rate=${1-6}

# https://stackoverflow.com/questions/15536362/video-from-photos-using-mencoder
ffmpeg -r ${rate} -f image2 -i 'var/%d.jpg' movie.mp4
