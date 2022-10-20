#!/bin/ksh

output=${1?"usage: $0 [movie.mp4] # Select a window and record it's contents."}

mkdir ${output}

./init.sh ${output}/ # Initialize tmp/ and mount var/

./run # Record window frames
# Sometime later...^C

rd movie.mp4 &

./make-movie.mp4.sh # Generate movie.mp4

mv movie.mp4 ${output}.mp4

mplayer ${output.mp4}

./uninit.sh # Unmount var/

./clean.sh # Remove tmp/

exit 0
