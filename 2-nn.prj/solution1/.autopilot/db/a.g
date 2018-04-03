#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/f/dev/522r/522r_asst4/2-nn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
