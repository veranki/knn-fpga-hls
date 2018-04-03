set moduleName update_knn_1
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {update_knn.1}
set C_modelType { int 54 }
set C_modelArgList {
	{ test_inst_V int 49 regular  }
	{ train_inst_V int 48 regular  }
	{ min_distances_V_read int 6 regular  }
	{ min_distances_V12_read int 6 regular  }
	{ min_distances_V2_read int 6 regular  }
	{ min_distances_V13_read int 6 regular  }
	{ min_distances_V14_read int 6 regular  }
	{ min_distances_V15_read int 6 regular  }
	{ min_distances_V26_read int 6 regular  }
	{ min_distances_V27_read int 6 regular  }
	{ min_distances_V28_read int 6 regular  }
	{ min_distances_V_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "test_inst_V", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "train_inst_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V12_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V2_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V13_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V14_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V15_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V26_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V27_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V28_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_V_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 54} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ test_inst_V sc_in sc_lv 49 signal 0 } 
	{ train_inst_V sc_in sc_lv 48 signal 1 } 
	{ min_distances_V_read sc_in sc_lv 6 signal 2 } 
	{ min_distances_V12_read sc_in sc_lv 6 signal 3 } 
	{ min_distances_V2_read sc_in sc_lv 6 signal 4 } 
	{ min_distances_V13_read sc_in sc_lv 6 signal 5 } 
	{ min_distances_V14_read sc_in sc_lv 6 signal 6 } 
	{ min_distances_V15_read sc_in sc_lv 6 signal 7 } 
	{ min_distances_V26_read sc_in sc_lv 6 signal 8 } 
	{ min_distances_V27_read sc_in sc_lv 6 signal 9 } 
	{ min_distances_V28_read sc_in sc_lv 6 signal 10 } 
	{ min_distances_V_offset sc_in sc_lv 4 signal 11 } 
	{ ap_return_0 sc_out sc_lv 6 signal -1 } 
	{ ap_return_1 sc_out sc_lv 6 signal -1 } 
	{ ap_return_2 sc_out sc_lv 6 signal -1 } 
	{ ap_return_3 sc_out sc_lv 6 signal -1 } 
	{ ap_return_4 sc_out sc_lv 6 signal -1 } 
	{ ap_return_5 sc_out sc_lv 6 signal -1 } 
	{ ap_return_6 sc_out sc_lv 6 signal -1 } 
	{ ap_return_7 sc_out sc_lv 6 signal -1 } 
	{ ap_return_8 sc_out sc_lv 6 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "test_inst_V", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "test_inst_V", "role": "default" }} , 
 	{ "name": "train_inst_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "train_inst_V", "role": "default" }} , 
 	{ "name": "min_distances_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V_read", "role": "default" }} , 
 	{ "name": "min_distances_V12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V12_read", "role": "default" }} , 
 	{ "name": "min_distances_V2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V2_read", "role": "default" }} , 
 	{ "name": "min_distances_V13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V13_read", "role": "default" }} , 
 	{ "name": "min_distances_V14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V14_read", "role": "default" }} , 
 	{ "name": "min_distances_V15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V15_read", "role": "default" }} , 
 	{ "name": "min_distances_V26_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V26_read", "role": "default" }} , 
 	{ "name": "min_distances_V27_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V27_read", "role": "default" }} , 
 	{ "name": "min_distances_V28_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_V28_read", "role": "default" }} , 
 	{ "name": "min_distances_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "min_distances_V_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "update_knn_1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V26_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V27_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V28_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1dEe_U36", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1bkb_U37", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1bkb_U38", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1dEe_U39", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1bkb_U40", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1bkb_U41", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_94_6eOg_U42", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_94_6eOg_U43", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_94_6eOg_U44", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1bkb_U45", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1bkb_U46", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_1dEe_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	update_knn_1 {
		test_inst_V {Type I LastRead 0 FirstWrite -1}
		train_inst_V {Type I LastRead 0 FirstWrite -1}
		min_distances_V_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V12_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V2_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V13_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V14_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V15_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V26_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V27_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V28_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	test_inst_V { ap_none {  { test_inst_V in_data 0 49 } } }
	train_inst_V { ap_none {  { train_inst_V in_data 0 48 } } }
	min_distances_V_read { ap_none {  { min_distances_V_read in_data 0 6 } } }
	min_distances_V12_read { ap_none {  { min_distances_V12_read in_data 0 6 } } }
	min_distances_V2_read { ap_none {  { min_distances_V2_read in_data 0 6 } } }
	min_distances_V13_read { ap_none {  { min_distances_V13_read in_data 0 6 } } }
	min_distances_V14_read { ap_none {  { min_distances_V14_read in_data 0 6 } } }
	min_distances_V15_read { ap_none {  { min_distances_V15_read in_data 0 6 } } }
	min_distances_V26_read { ap_none {  { min_distances_V26_read in_data 0 6 } } }
	min_distances_V27_read { ap_none {  { min_distances_V27_read in_data 0 6 } } }
	min_distances_V28_read { ap_none {  { min_distances_V28_read in_data 0 6 } } }
	min_distances_V_offset { ap_none {  { min_distances_V_offset in_data 0 4 } } }
}
