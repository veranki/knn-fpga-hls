#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the digitrec program
#
# @desc: 1. Enter "make" to compile & execute the digitrec program
#        2. Enter "make clean" to clean up the directory (before submission)


# Extract Vivado HLS include path
VHLS_PATH := $(dir $(shell which vivado_hls))/..
VHLS_INC ?= ${VHLS_PATH}/include

# Specify compilation flags
CFLAGS = -g -I${VHLS_INC} -DK_CONST=3

# Compile & run digitrec implementation
all: digitrec.cpp digitrec_test.cpp
	@echo "Compiling & executing the digit recogintion program ..."
	g++ ${CFLAGS} digitrec.cpp digitrec_test.cpp -o digitrec
	./digitrec

# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf digitrec vivado_hls.log *nn.prj result out.dat *~
