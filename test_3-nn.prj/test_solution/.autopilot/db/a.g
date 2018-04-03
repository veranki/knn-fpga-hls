#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/f/dev/522r/522r_asst4/test_3-nn.prj/test_solution/.autopilot/db/a.g.bc ${1+"$@"}
