set C_TypeInfoList {{ 
"digitrec" : [[], {"return": [[],"0"] }, [{"ExternC" : 0}], [ {"input": [[],"1"] }],[],""], 
"1": [ "digit", {"typedef": [[[],"2"],""]}], 
"2": [ "ap_uint<49>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 49}}]],""]}}], 
"0": [ "bit4", {"typedef": [[[],"3"],""]}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}]
}}
set moduleName digitrec
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {digitrec}
set C_modelType { int 4 }
set C_modelArgList {
	{ input_V int 49 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY", "bitSlice":[{"low":0,"up":48,"cElement": [{"cName": "input.V","cData": "uint49","bit_use": { "low": 0,"up": 48},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "agg.result.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V sc_in sc_lv 49 signal 0 } 
	{ ap_return sc_out sc_lv 4 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "input_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "18", "31", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "digitrec",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "input_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "training_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.training_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "update_knn",
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
			{"Name" : "min_distances_V3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V16_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V17_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V28_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V29_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V210_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V211_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "min_distances_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_124_cud_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_124_cud_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_124_cud_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_fu_664.digitrec_mux_42_1bkb_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1dEe_U36", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1bkb_U37", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1bkb_U38", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1dEe_U39", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1bkb_U40", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1bkb_U41", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_94_6eOg_U42", "Parent" : "18"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_94_6eOg_U43", "Parent" : "18"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_94_6eOg_U44", "Parent" : "18"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1bkb_U45", "Parent" : "18"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1bkb_U46", "Parent" : "18"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_699.digitrec_mux_42_1dEe_U47", "Parent" : "18"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
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
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1dEe_U36", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1bkb_U37", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1bkb_U38", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1dEe_U39", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1bkb_U40", "Parent" : "31"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1bkb_U41", "Parent" : "31"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_94_6eOg_U42", "Parent" : "31"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_94_6eOg_U43", "Parent" : "31"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_94_6eOg_U44", "Parent" : "31"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1bkb_U45", "Parent" : "31"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1bkb_U46", "Parent" : "31"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_knn_1_fu_725.digitrec_mux_42_1dEe_U47", "Parent" : "31"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_knn_vote_fu_755", "Parent" : "0",
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
			{"Name" : "knn_set_2_2_2_V_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U92", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U93", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U94", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U95", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U96", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U97", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U98", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U99", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U100", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U101", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U102", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U103", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U104", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U105", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U106", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U107", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U108", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U109", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U110", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U111", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U112", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U113", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U114", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U115", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U116", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U117", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U118", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U119", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U120", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_42_6g8j_U121", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	digitrec {
		input_V {Type I LastRead 0 FirstWrite -1}
		training_data_V {Type I LastRead -1 FirstWrite -1}}
	update_knn {
		test_inst_V {Type I LastRead 0 FirstWrite -1}
		train_inst_V {Type I LastRead 0 FirstWrite -1}
		min_distances_V_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V12_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V2_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V3_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V14_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V15_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V16_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V17_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V28_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V29_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V210_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V211_read {Type I LastRead 0 FirstWrite -1}
		min_distances_V_offset {Type I LastRead 0 FirstWrite -1}}
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
		min_distances_V_offset {Type I LastRead 0 FirstWrite -1}}
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
		min_distances_V_offset {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "32487", "Max" : "32487"}
	, {"Name" : "Interval", "Min" : "32488", "Max" : "32488"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_V { ap_none {  { input_V in_data 0 49 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
