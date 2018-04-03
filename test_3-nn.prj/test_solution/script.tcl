############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test_3-nn.prj
set_top digitrec
add_files digitrec.cpp -cflags "-DK_CONST=3"
add_files -tb digitrec_test.cpp -cflags "-DK_CONST=3"
add_files -tb data
open_solution "test_solution"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./test_3-nn.prj/test_solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
