#!/bin/ksh

var_point=${1?"usage: sudo $0 [directory/] # That will be mounted as var/."}

[[ -z "$(ls var/)" ]] &&
    sudo mount -o bind ${var_point} var/

[[ ! -e tmp/INITIALIZED ]] &&
   sudo mount -t tmpfs none tmp && 
   touch tmp/INITIALIZED

