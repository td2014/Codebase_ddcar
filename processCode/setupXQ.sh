#!/bin/bash
#
# Quick script to enable network connects from
# local machine to XQuartz
# From https://fredrikaverpil.github.io
#
###open -a XQuartz
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
docker run -it -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/X11-unix ros
#
# End of script
#
