// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "update_knn.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic update_knn::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic update_knn::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> update_knn::ap_ST_fsm_state1 = "1";
const sc_lv<5> update_knn::ap_ST_fsm_state2 = "10";
const sc_lv<5> update_knn::ap_ST_fsm_state3 = "100";
const sc_lv<5> update_knn::ap_ST_fsm_state4 = "1000";
const sc_lv<5> update_knn::ap_ST_fsm_state5 = "10000";
const sc_lv<32> update_knn::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> update_knn::ap_const_lv32_1 = "1";
const sc_lv<1> update_knn::ap_const_lv1_0 = "0";
const sc_lv<32> update_knn::ap_const_lv32_2 = "10";
const sc_lv<32> update_knn::ap_const_lv32_3 = "11";
const sc_lv<32> update_knn::ap_const_lv32_4 = "100";
const sc_lv<6> update_knn::ap_const_lv6_0 = "000000";
const sc_lv<3> update_knn::ap_const_lv3_4 = "100";
const sc_lv<1> update_knn::ap_const_lv1_1 = "1";
const sc_lv<3> update_knn::ap_const_lv3_7 = "111";
const sc_lv<2> update_knn::ap_const_lv2_0 = "00";
const sc_lv<6> update_knn::ap_const_lv6_31 = "110001";
const sc_lv<6> update_knn::ap_const_lv6_1 = "1";
const sc_lv<3> update_knn::ap_const_lv3_0 = "000";
const bool update_knn::ap_const_boolean_1 = true;

update_knn::update_knn(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_4_fu_198_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_4_fu_198_p2 );

    SC_METHOD(thread_dist_V_fu_187_p2);
    sensitive << ( min_distance_last_el_reg_88 );
    sensitive << ( tmp_1_cast_fu_183_p1 );

    SC_METHOD(thread_exitcond_fu_164_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( bvh_d_index_reg_99 );

    SC_METHOD(thread_grp_fu_122_p2);
    sensitive << ( i1_reg_110 );

    SC_METHOD(thread_i_fu_170_p2);
    sensitive << ( bvh_d_index_reg_99 );

    SC_METHOD(thread_index_assign_cast2_fu_160_p1);
    sensitive << ( bvh_d_index_reg_99 );

    SC_METHOD(thread_min_distances_V_address0);
    sensitive << ( min_distances_V_addr_reg_286 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_6_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_2_cast_fu_213_p1 );
    sensitive << ( tmp_3_cast_fu_237_p1 );

    SC_METHOD(thread_min_distances_V_address1);
    sensitive << ( min_distances_V_addr_1_reg_301 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_min_distances_V_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_6_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_min_distances_V_ce1);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_min_distances_V_d0);
    sensitive << ( min_distances_V_q0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_6_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( temp_min_distance_la_fu_42 );

    SC_METHOD(thread_min_distances_V_d1);
    sensitive << ( min_distance_last_el_1_reg_291 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_min_distances_V_offs_1_fu_128_p1);
    sensitive << ( min_distances_V_offset );

    SC_METHOD(thread_min_distances_V_we0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_6_fu_222_p2 );
    sensitive << ( tmp_6_reg_297 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_9_fu_247_p2 );

    SC_METHOD(thread_min_distances_V_we1);
    sensitive << ( tmp_6_reg_297 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_9_fu_247_p2 );

    SC_METHOD(thread_p_shl_cast_fu_140_p1);
    sensitive << ( tmp_fu_132_p3 );

    SC_METHOD(thread_r_V_fu_154_p2);
    sensitive << ( test_inst_V );
    sensitive << ( train_inst_V_cast_fu_150_p1 );

    SC_METHOD(thread_tmp_1_cast_fu_183_p1);
    sensitive << ( tmp_5_fu_176_p3 );

    SC_METHOD(thread_tmp_1_fu_144_p2);
    sensitive << ( min_distances_V_offs_1_fu_128_p1 );
    sensitive << ( p_shl_cast_fu_140_p1 );

    SC_METHOD(thread_tmp_2_cast_fu_213_p1);
    sensitive << ( tmp_2_fu_208_p2 );

    SC_METHOD(thread_tmp_2_fu_208_p2);
    sensitive << ( tmp_1_reg_252 );
    sensitive << ( tmp_5_cast_fu_204_p1 );

    SC_METHOD(thread_tmp_3_cast_fu_237_p1);
    sensitive << ( tmp_3_fu_232_p2 );

    SC_METHOD(thread_tmp_3_fu_232_p2);
    sensitive << ( tmp_1_reg_252 );
    sensitive << ( tmp_8_cast_fu_228_p1 );

    SC_METHOD(thread_tmp_4_fu_198_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i1_reg_110 );

    SC_METHOD(thread_tmp_5_cast_fu_204_p1);
    sensitive << ( i1_reg_110 );

    SC_METHOD(thread_tmp_5_fu_176_p3);
    sensitive << ( r_V_reg_258 );
    sensitive << ( index_assign_cast2_fu_160_p1 );

    SC_METHOD(thread_tmp_6_fu_222_p2);
    sensitive << ( min_distances_V_q0 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( temp_min_distance_la_fu_42 );

    SC_METHOD(thread_tmp_8_cast_fu_228_p1);
    sensitive << ( grp_fu_122_p2 );

    SC_METHOD(thread_tmp_9_fu_247_p2);
    sensitive << ( min_distances_V_q0 );
    sensitive << ( min_distance_last_el_1_reg_291 );
    sensitive << ( tmp_6_reg_297 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_tmp_fu_132_p3);
    sensitive << ( min_distances_V_offset );

    SC_METHOD(thread_train_inst_V_cast_fu_150_p1);
    sensitive << ( train_inst_V );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_164_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_4_fu_198_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "update_knn_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, test_inst_V, "(port)test_inst_V");
    sc_trace(mVcdFile, train_inst_V, "(port)train_inst_V");
    sc_trace(mVcdFile, min_distances_V_address0, "(port)min_distances_V_address0");
    sc_trace(mVcdFile, min_distances_V_ce0, "(port)min_distances_V_ce0");
    sc_trace(mVcdFile, min_distances_V_we0, "(port)min_distances_V_we0");
    sc_trace(mVcdFile, min_distances_V_d0, "(port)min_distances_V_d0");
    sc_trace(mVcdFile, min_distances_V_q0, "(port)min_distances_V_q0");
    sc_trace(mVcdFile, min_distances_V_address1, "(port)min_distances_V_address1");
    sc_trace(mVcdFile, min_distances_V_ce1, "(port)min_distances_V_ce1");
    sc_trace(mVcdFile, min_distances_V_we1, "(port)min_distances_V_we1");
    sc_trace(mVcdFile, min_distances_V_d1, "(port)min_distances_V_d1");
    sc_trace(mVcdFile, min_distances_V_offset, "(port)min_distances_V_offset");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_1_fu_144_p2, "tmp_1_fu_144_p2");
    sc_trace(mVcdFile, tmp_1_reg_252, "tmp_1_reg_252");
    sc_trace(mVcdFile, r_V_fu_154_p2, "r_V_fu_154_p2");
    sc_trace(mVcdFile, r_V_reg_258, "r_V_reg_258");
    sc_trace(mVcdFile, i_fu_170_p2, "i_fu_170_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, dist_V_fu_187_p2, "dist_V_fu_187_p2");
    sc_trace(mVcdFile, exitcond_fu_164_p2, "exitcond_fu_164_p2");
    sc_trace(mVcdFile, min_distances_V_addr_reg_286, "min_distances_V_addr_reg_286");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_4_fu_198_p2, "tmp_4_fu_198_p2");
    sc_trace(mVcdFile, min_distance_last_el_1_reg_291, "min_distance_last_el_1_reg_291");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_6_fu_222_p2, "tmp_6_fu_222_p2");
    sc_trace(mVcdFile, tmp_6_reg_297, "tmp_6_reg_297");
    sc_trace(mVcdFile, min_distances_V_addr_1_reg_301, "min_distances_V_addr_1_reg_301");
    sc_trace(mVcdFile, grp_fu_122_p2, "grp_fu_122_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, min_distance_last_el_reg_88, "min_distance_last_el_reg_88");
    sc_trace(mVcdFile, bvh_d_index_reg_99, "bvh_d_index_reg_99");
    sc_trace(mVcdFile, i1_reg_110, "i1_reg_110");
    sc_trace(mVcdFile, tmp_2_cast_fu_213_p1, "tmp_2_cast_fu_213_p1");
    sc_trace(mVcdFile, tmp_3_cast_fu_237_p1, "tmp_3_cast_fu_237_p1");
    sc_trace(mVcdFile, temp_min_distance_la_fu_42, "temp_min_distance_la_fu_42");
    sc_trace(mVcdFile, tmp_9_fu_247_p2, "tmp_9_fu_247_p2");
    sc_trace(mVcdFile, tmp_fu_132_p3, "tmp_fu_132_p3");
    sc_trace(mVcdFile, min_distances_V_offs_1_fu_128_p1, "min_distances_V_offs_1_fu_128_p1");
    sc_trace(mVcdFile, p_shl_cast_fu_140_p1, "p_shl_cast_fu_140_p1");
    sc_trace(mVcdFile, train_inst_V_cast_fu_150_p1, "train_inst_V_cast_fu_150_p1");
    sc_trace(mVcdFile, index_assign_cast2_fu_160_p1, "index_assign_cast2_fu_160_p1");
    sc_trace(mVcdFile, tmp_5_fu_176_p3, "tmp_5_fu_176_p3");
    sc_trace(mVcdFile, tmp_1_cast_fu_183_p1, "tmp_1_cast_fu_183_p1");
    sc_trace(mVcdFile, tmp_5_cast_fu_204_p1, "tmp_5_cast_fu_204_p1");
    sc_trace(mVcdFile, tmp_2_fu_208_p2, "tmp_2_fu_208_p2");
    sc_trace(mVcdFile, tmp_8_cast_fu_228_p1, "tmp_8_cast_fu_228_p1");
    sc_trace(mVcdFile, tmp_3_fu_232_p2, "tmp_3_fu_232_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

update_knn::~update_knn() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void update_knn::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_164_p2.read(), ap_const_lv1_0))) {
        bvh_d_index_reg_99 = i_fu_170_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        bvh_d_index_reg_99 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_164_p2.read(), ap_const_lv1_1))) {
        i1_reg_110 = ap_const_lv3_4;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i1_reg_110 = grp_fu_122_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_164_p2.read(), ap_const_lv1_0))) {
        min_distance_last_el_reg_88 = dist_V_fu_187_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        min_distance_last_el_reg_88 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(tmp_6_fu_222_p2.read(), ap_const_lv1_1))) {
        temp_min_distance_la_fu_42 = min_distances_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond_fu_164_p2.read(), ap_const_lv1_1))) {
        temp_min_distance_la_fu_42 = min_distance_last_el_reg_88.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        min_distance_last_el_1_reg_291 = min_distances_V_q0.read();
        tmp_6_reg_297 = tmp_6_fu_222_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_222_p2.read()))) {
        min_distances_V_addr_1_reg_301 =  (sc_lv<6>) (tmp_3_cast_fu_237_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_4_fu_198_p2.read()))) {
        min_distances_V_addr_reg_286 =  (sc_lv<6>) (tmp_2_cast_fu_213_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        r_V_reg_258 = r_V_fu_154_p2.read();
        tmp_1_reg_252 = tmp_1_fu_144_p2.read();
    }
}

void update_knn::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void update_knn::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void update_knn::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void update_knn::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void update_knn::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void update_knn::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(tmp_4_fu_198_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void update_knn::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void update_knn::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_4_fu_198_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void update_knn::thread_dist_V_fu_187_p2() {
    dist_V_fu_187_p2 = (!min_distance_last_el_reg_88.read().is_01() || !tmp_1_cast_fu_183_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(min_distance_last_el_reg_88.read()) + sc_biguint<6>(tmp_1_cast_fu_183_p1.read()));
}

void update_knn::thread_exitcond_fu_164_p2() {
    exitcond_fu_164_p2 = (!bvh_d_index_reg_99.read().is_01() || !ap_const_lv6_31.is_01())? sc_lv<1>(): sc_lv<1>(bvh_d_index_reg_99.read() == ap_const_lv6_31);
}

void update_knn::thread_grp_fu_122_p2() {
    grp_fu_122_p2 = (!i1_reg_110.read().is_01() || !ap_const_lv3_7.is_01())? sc_lv<3>(): (sc_biguint<3>(i1_reg_110.read()) + sc_bigint<3>(ap_const_lv3_7));
}

void update_knn::thread_i_fu_170_p2() {
    i_fu_170_p2 = (!bvh_d_index_reg_99.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(bvh_d_index_reg_99.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void update_knn::thread_index_assign_cast2_fu_160_p1() {
    index_assign_cast2_fu_160_p1 = esl_zext<32,6>(bvh_d_index_reg_99.read());
}

void update_knn::thread_min_distances_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(tmp_6_fu_222_p2.read(), ap_const_lv1_1)))) {
        min_distances_V_address0 = min_distances_V_addr_reg_286.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_222_p2.read()))) {
        min_distances_V_address0 =  (sc_lv<6>) (tmp_3_cast_fu_237_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        min_distances_V_address0 =  (sc_lv<6>) (tmp_2_cast_fu_213_p1.read());
    } else {
        min_distances_V_address0 = "XXXXXX";
    }
}

void update_knn::thread_min_distances_V_address1() {
    min_distances_V_address1 = min_distances_V_addr_1_reg_301.read();
}

void update_knn::thread_min_distances_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_222_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(tmp_6_fu_222_p2.read(), ap_const_lv1_1)))) {
        min_distances_V_ce0 = ap_const_logic_1;
    } else {
        min_distances_V_ce0 = ap_const_logic_0;
    }
}

void update_knn::thread_min_distances_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        min_distances_V_ce1 = ap_const_logic_1;
    } else {
        min_distances_V_ce1 = ap_const_logic_0;
    }
}

void update_knn::thread_min_distances_V_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        min_distances_V_d0 = min_distances_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(tmp_6_fu_222_p2.read(), ap_const_lv1_1))) {
        min_distances_V_d0 = temp_min_distance_la_fu_42.read();
    } else {
        min_distances_V_d0 = "XXXXXX";
    }
}

void update_knn::thread_min_distances_V_d1() {
    min_distances_V_d1 = min_distance_last_el_1_reg_291.read();
}

void update_knn::thread_min_distances_V_offs_1_fu_128_p1() {
    min_distances_V_offs_1_fu_128_p1 = esl_zext<7,4>(min_distances_V_offset.read());
}

void update_knn::thread_min_distances_V_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(tmp_6_fu_222_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_reg_297.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_fu_247_p2.read())))) {
        min_distances_V_we0 = ap_const_logic_1;
    } else {
        min_distances_V_we0 = ap_const_logic_0;
    }
}

void update_knn::thread_min_distances_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_reg_297.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_fu_247_p2.read()))) {
        min_distances_V_we1 = ap_const_logic_1;
    } else {
        min_distances_V_we1 = ap_const_logic_0;
    }
}

void update_knn::thread_p_shl_cast_fu_140_p1() {
    p_shl_cast_fu_140_p1 = esl_zext<7,6>(tmp_fu_132_p3.read());
}

void update_knn::thread_r_V_fu_154_p2() {
    r_V_fu_154_p2 = (train_inst_V_cast_fu_150_p1.read() ^ test_inst_V.read());
}

void update_knn::thread_tmp_1_cast_fu_183_p1() {
    tmp_1_cast_fu_183_p1 = esl_zext<6,1>(tmp_5_fu_176_p3.read());
}

void update_knn::thread_tmp_1_fu_144_p2() {
    tmp_1_fu_144_p2 = (!min_distances_V_offs_1_fu_128_p1.read().is_01() || !p_shl_cast_fu_140_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(min_distances_V_offs_1_fu_128_p1.read()) + sc_biguint<7>(p_shl_cast_fu_140_p1.read()));
}

void update_knn::thread_tmp_2_cast_fu_213_p1() {
    tmp_2_cast_fu_213_p1 = esl_zext<64,7>(tmp_2_fu_208_p2.read());
}

void update_knn::thread_tmp_2_fu_208_p2() {
    tmp_2_fu_208_p2 = (!tmp_1_reg_252.read().is_01() || !tmp_5_cast_fu_204_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_1_reg_252.read()) + sc_biguint<7>(tmp_5_cast_fu_204_p1.read()));
}

void update_knn::thread_tmp_3_cast_fu_237_p1() {
    tmp_3_cast_fu_237_p1 = esl_zext<64,7>(tmp_3_fu_232_p2.read());
}

void update_knn::thread_tmp_3_fu_232_p2() {
    tmp_3_fu_232_p2 = (!tmp_1_reg_252.read().is_01() || !tmp_8_cast_fu_228_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_1_reg_252.read()) + sc_biguint<7>(tmp_8_cast_fu_228_p1.read()));
}

void update_knn::thread_tmp_4_fu_198_p2() {
    tmp_4_fu_198_p2 = (!i1_reg_110.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(i1_reg_110.read() == ap_const_lv3_0);
}

void update_knn::thread_tmp_5_cast_fu_204_p1() {
    tmp_5_cast_fu_204_p1 = esl_zext<7,3>(i1_reg_110.read());
}

void update_knn::thread_tmp_5_fu_176_p3() {
    tmp_5_fu_176_p3 = (!index_assign_cast2_fu_160_p1.read().is_01() || sc_biguint<32>(index_assign_cast2_fu_160_p1.read()).to_uint() >= 49)? sc_lv<1>(): r_V_reg_258.read().range(sc_biguint<32>(index_assign_cast2_fu_160_p1.read()).to_uint(), sc_biguint<32>(index_assign_cast2_fu_160_p1.read()).to_uint());
}

void update_knn::thread_tmp_6_fu_222_p2() {
    tmp_6_fu_222_p2 = (!temp_min_distance_la_fu_42.read().is_01() || !min_distances_V_q0.read().is_01())? sc_lv<1>(): (sc_biguint<6>(temp_min_distance_la_fu_42.read()) < sc_biguint<6>(min_distances_V_q0.read()));
}

void update_knn::thread_tmp_8_cast_fu_228_p1() {
    tmp_8_cast_fu_228_p1 = esl_zext<7,3>(grp_fu_122_p2.read());
}

void update_knn::thread_tmp_9_fu_247_p2() {
    tmp_9_fu_247_p2 = (!min_distance_last_el_1_reg_291.read().is_01() || !min_distances_V_q0.read().is_01())? sc_lv<1>(): (sc_biguint<6>(min_distance_last_el_1_reg_291.read()) < sc_biguint<6>(min_distances_V_q0.read()));
}

void update_knn::thread_tmp_fu_132_p3() {
    tmp_fu_132_p3 = esl_concat<4,2>(min_distances_V_offset.read(), ap_const_lv2_0);
}

void update_knn::thread_train_inst_V_cast_fu_150_p1() {
    train_inst_V_cast_fu_150_p1 = esl_zext<49,48>(train_inst_V.read());
}

void update_knn::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_fu_164_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_4_fu_198_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<5>) ("XXXXX");
            break;
    }
}

}

