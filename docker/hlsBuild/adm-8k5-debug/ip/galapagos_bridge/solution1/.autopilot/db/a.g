#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/user/galapagos/hlsBuild/adm-8k5-debug/ip/galapagos_bridge/solution1/.autopilot/db/a.g.bc ${1+"$@"}