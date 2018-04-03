# kNN-HLS

---
## Project Task List:
### Coding & Debugging:
- [x] code update_knn
- [x] code knn_vote
- [ ] change arbitrary precision type ap_unit while error < 10%

### Design Space Exploration
- [x] vary k from 1 through 5 & collect **performance** & **area** numbers.
- [x] figure out metric calculation from LAB 1.

### Design Optimization
- [x] minimize latency by **one order of magnitude** w.r.t baseline design
- [x] use loop pipelining as well
- [ ] optimize software digitrec

### Report
- [x] contrast performance & area of optimized design with baseline design, use k = 3 for this
- [ ] contrast runtime(speedup) for each implementation: software, baseline, unrolled, pipelined when FPGA clock @ 100MHz

---
## Notes:
### Performance vs Accuracy:
* observe effect of precision on bitwise and bit selection operations in-turn on accuracy & area


### Metric Calculation:
* area: 
	- in terms of resource utilization: no. of BRAMS, DSP48s, LUTs & FFs 
* performance:
	- latency: no. of clock cycles
	- throughput: reported interval(clock cycles) * clock period (10ns ?)
* speedup:
	- runtime speedup normalized against software

### Design Optimization 1:
* loop unrolling: **set_directive_unroll** **p.481**
	- 
* array partitioning: **set_directive_array_partition** **p.447 448**
	- 
* snippets **p.145, 146, 151, 152**
* avoid unrolling outermost loop: 1800 iterations => design would not require excessive area
* only used fixed bound for loops
* while loop => synthesizes to variable-latency design => difficult to report
* need to enable C-RTL co-simulation to get actual cycle count for a design with data-dependent loop bounds(uncomment cosim line in run.tcl)

### Design Optimization 2:
* only used constant bound loops
* use pipelining in addition to loop unrolling & array partition
* loop pipelining: **set_directive_pipeline** **p.472**
	- pipeline the outer loop: L1800
* optimize software only digitrec with using native integer types etc.

### Testing:
Latency:
* Baseline: 1 227 600
* Loop Unroll
	- Just inner loop of 1800: 
* ArrayPartition
	- None: 
	- Complete: 117 133
	- 