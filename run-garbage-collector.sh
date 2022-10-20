#!/bin/ksh

amount=${1-100}

while true; do
    ./gc.sh ${amount}
    sleep 1
done

