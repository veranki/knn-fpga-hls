set moduleName knn_vote
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {knn_vote}
set C_modelType { int 4 }
set C_modelArgList {
	{ knn_set_0_0_0_V_r int 6 regular  }
	{ knn_set_0_0_1_V_r int 6 regular  }
	{ knn_set_0_0_2_V_r int 6 regular  }
	{ knn_set_0_0_3_V_r int 6 regular  }
	{ knn_set_0_1_0_V_r int 6 regular  }
	{ knn_set_0_1_1_V_r int 6 regular  }
	{ knn_set_0_1_2_V_r int 6 regular  }
	{ knn_set_0_1_3_V_r int 6 regular  }
	{ knn_set_0_2_0_V_r int 6 regular  }
	{ knn_set_0_2_1_V_r int 6 regular  }
	{ knn_set_0_2_2_V_r int 6 regular  }
	{ knn_set_0_2_3_V_r int 6 regular  }
	{ knn_set_1_0_0_V_r int 6 regular  }
	{ knn_set_1_0_1_V_r int 6 regular  }
	{ knn_set_1_0_2_V_r int 6 regular  }
	{ knn_set_1_1_0_V_r int 6 regular  }
	{ knn_set_1_1_1_V_r int 6 regular  }
	{ knn_set_1_1_2_V_r int 6 regular  }
	{ knn_set_1_2_0_V_r int 6 regular  }
	{ knn_set_1_2_1_V_r int 6 regular  }
	{ knn_set_1_2_2_V_r int 6 regular  }
	{ knn_set_2_0_0_V_r int 6 regular  }
	{ knn_set_2_0_1_V_r int 6 regular  }
	{ knn_set_2_0_2_V_r int 6 regular  }
	{ knn_set_2_1_0_V_r int 6 regular  }
	{ knn_set_2_1_1_V_r int 6 regular  }
	{ knn_set_2_1_2_V_r int 6 regular  }
	{ knn_set_2_2_0_V_r int 6 regular  }
	{ knn_set_2_2_1_V_r int 6 regular  }
	{ knn_set_2_2_2_V_r int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "knn_set_0_0_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_0_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_0_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_0_3_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_1_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_1_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_1_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_1_3_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_2_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_2_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_2_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_2_3_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_0_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_0_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_0_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_1_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_1_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_1_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_2_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_2_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_2_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_0_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_0_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_0_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_1_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_1_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_1_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_2_0_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_2_1_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_2_2_V_r", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 4} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ knn_set_0_0_0_V_r sc_in sc_lv 6 signal 0 } 
	{ knn_set_0_0_1_V_r sc_in sc_lv 6 signal 1 } 
	{ knn_set_0_0_2_V_r sc_in sc_lv 6 signal 2 } 
	{ knn_set_0_0_3_V_r sc_in sc_lv 6 signal 3 } 
	{ knn_set_0_1_0_V_r sc_in sc_lv 6 signal 4 } 
	{ knn_set_0_1_1_V_r sc_in sc_lv 6 signal 5 } 
	{ knn_set_0_1_2_V_r sc_in sc_lv 6 signal 6 } 
	{ knn_set_0_1_3_V_r sc_in sc_lv 6 signal 7 } 
	{ knn_set_0_2_0_V_r sc_in sc_lv 6 signal 8 } 
	{ knn_set_0_2_1_V_r sc_in sc_lv 6 signal 9 } 
	{ knn_set_0_2_2_V_r sc_in sc_lv 6 signal 10 } 
	{ knn_set_0_2_3_V_r sc_in sc_lv 6 signal 11 } 
	{ knn_set_1_0_0_V_r sc_in sc_lv 6 signal 12 } 
	{ knn_set_1_0_1_V_r sc_in sc_lv 6 signal 13 } 
	{ knn_set_1_0_2_V_r sc_in sc_lv 6 signal 14 } 
	{ knn_set_1_1_0_V_r sc_in sc_lv 6 signal 15 } 
	{ knn_set_1_1_1_V_r sc_in sc_lv 6 signal 16 } 
	{ knn_set_1_1_2_V_r sc_in sc_lv 6 signal 17 } 
	{ knn_set_1_2_0_V_r sc_in sc_lv 6 signal 18 } 
	{ knn_set_1_2_1_V_r sc_in sc_lv 6 signal 19 } 
	{ knn_set_1_2_2_V_r sc_in sc_lv 6 signal 20 } 
	{ knn_set_2_0_0_V_r sc_in sc_lv 6 signal 21 } 
	{ knn_set_2_0_1_V_r sc_in sc_lv 6 signal 22 } 
	{ knn_set_2_0_2_V_r sc_in sc_lv 6 signal 23 } 
	{ knn_set_2_1_0_V_r sc_in sc_lv 6 signal 24 } 
	{ knn_set_2_1_1_V_r sc_in sc_lv 6 signal 25 } 
	{ knn_set_2_1_2_V_r sc_in sc_lv 6 signal 26 } 
	{ knn_set_2_2_0_V_r sc_in sc_lv 6 signal 27 } 
	{ knn_set_2_2_1_V_r sc_in sc_lv 6 signal 28 } 
	{ knn_set_2_2_2_V_r sc_in sc_lv 6 signal 29 } 
	{ ap_return sc_out sc_lv 4 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "knn_set_0_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_0_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_0_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_0_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_0_3_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_0_3_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_1_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_1_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_1_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_1_3_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_1_3_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_2_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_2_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_2_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_0_2_3_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_2_3_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_0_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_0_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_0_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_1_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_1_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_1_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_2_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_2_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_1_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_2_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_0_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_0_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_0_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_0_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_0_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_0_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_1_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_1_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_1_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_1_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_1_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_1_2_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_2_0_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_2_0_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_2_1_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_2_1_V_r", "role": "default" }} , 
 	{ "name": "knn_set_2_2_2_V_r", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_2_2_V_r", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "knn_vote",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "knn_set_0_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_0_3_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_1_3_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_0_2_3_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_1_2_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_0_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_0_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_0_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_1_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_1_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_1_2_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_2_0_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_2_1_V_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "knn_set_2_2_2_V_r", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	knn_vote {
		knn_set_0_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_0_3_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_1_3_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_0_2_3_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_1_2_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_0_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_0_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_0_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_1_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_1_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_1_2_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_2_0_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_2_1_V_r {Type I LastRead 0 FirstWrite -1}
		knn_set_2_2_2_V_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	knn_set_0_0_0_V_r { ap_none {  { knn_set_0_0_0_V_r in_data 0 6 } } }
	knn_set_0_0_1_V_r { ap_none {  { knn_set_0_0_1_V_r in_data 0 6 } } }
	knn_set_0_0_2_V_r { ap_none {  { knn_set_0_0_2_V_r in_data 0 6 } } }
	knn_set_0_0_3_V_r { ap_none {  { knn_set_0_0_3_V_r in_data 0 6 } } }
	knn_set_0_1_0_V_r { ap_none {  { knn_set_0_1_0_V_r in_data 0 6 } } }
	knn_set_0_1_1_V_r { ap_none {  { knn_set_0_1_1_V_r in_data 0 6 } } }
	knn_set_0_1_2_V_r { ap_none {  { knn_set_0_1_2_V_r in_data 0 6 } } }
	knn_set_0_1_3_V_r { ap_none {  { knn_set_0_1_3_V_r in_data 0 6 } } }
	knn_set_0_2_0_V_r { ap_none {  { knn_set_0_2_0_V_r in_data 0 6 } } }
	knn_set_0_2_1_V_r { ap_none {  { knn_set_0_2_1_V_r in_data 0 6 } } }
	knn_set_0_2_2_V_r { ap_none {  { knn_set_0_2_2_V_r in_data 0 6 } } }
	knn_set_0_2_3_V_r { ap_none {  { knn_set_0_2_3_V_r in_data 0 6 } } }
	knn_set_1_0_0_V_r { ap_none {  { knn_set_1_0_0_V_r in_data 0 6 } } }
	knn_set_1_0_1_V_r { ap_none {  { knn_set_1_0_1_V_r in_data 0 6 } } }
	knn_set_1_0_2_V_r { ap_none {  { knn_set_1_0_2_V_r in_data 0 6 } } }
	knn_set_1_1_0_V_r { ap_none {  { knn_set_1_1_0_V_r in_data 0 6 } } }
	knn_set_1_1_1_V_r { ap_none {  { knn_set_1_1_1_V_r in_data 0 6 } } }
	knn_set_1_1_2_V_r { ap_none {  { knn_set_1_1_2_V_r in_data 0 6 } } }
	knn_set_1_2_0_V_r { ap_none {  { knn_set_1_2_0_V_r in_data 0 6 } } }
	knn_set_1_2_1_V_r { ap_none {  { knn_set_1_2_1_V_r in_data 0 6 } } }
	knn_set_1_2_2_V_r { ap_none {  { knn_set_1_2_2_V_r in_data 0 6 } } }
	knn_set_2_0_0_V_r { ap_none {  { knn_set_2_0_0_V_r in_data 0 6 } } }
	knn_set_2_0_1_V_r { ap_none {  { knn_set_2_0_1_V_r in_data 0 6 } } }
	knn_set_2_0_2_V_r { ap_none {  { knn_set_2_0_2_V_r in_data 0 6 } } }
	knn_set_2_1_0_V_r { ap_none {  { knn_set_2_1_0_V_r in_data 0 6 } } }
	knn_set_2_1_1_V_r { ap_none {  { knn_set_2_1_1_V_r in_data 0 6 } } }
	knn_set_2_1_2_V_r { ap_none {  { knn_set_2_1_2_V_r in_data 0 6 } } }
	knn_set_2_2_0_V_r { ap_none {  { knn_set_2_2_0_V_r in_data 0 6 } } }
	knn_set_2_2_1_V_r { ap_none {  { knn_set_2_2_1_V_r in_data 0 6 } } }
	knn_set_2_2_2_V_r { ap_none {  { knn_set_2_2_2_V_r in_data 0 6 } } }
}
