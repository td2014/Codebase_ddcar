#!/bin/bash
#
# Quick script to enable network connects from
# local machine to XQuartz
# From https://fredrikaverpil.github.io
#
# Make sure to launch XQuartz first and call this script from an XQuartz window using the command: open -a XQuartz
#
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
docker run -it -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/X11-unix \
       -v /Users/anthonydaniell/Desktop/FilesToSync/Research/Didi_Udacity_Car_Challenge:/tmp_host_share ros_full
#
# End of script
#
