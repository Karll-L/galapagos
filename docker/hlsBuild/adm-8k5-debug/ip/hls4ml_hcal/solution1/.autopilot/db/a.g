#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/user/galapagos/hlsBuild/adm-8k5-debug/ip/hls4ml_hcal/solution1/.autopilot/db/a.g.bc ${1+"$@"}