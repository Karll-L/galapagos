// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _g2N_egress_HH_
#define _g2N_egress_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct g2N_egress : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<73> > output_V_din;
    sc_in< sc_logic > output_V_full_n;
    sc_out< sc_logic > output_V_write;
    sc_out< sc_lv<9> > buffer_storage_V_address0;
    sc_out< sc_logic > buffer_storage_V_ce0;
    sc_in< sc_lv<64> > buffer_storage_V_q0;
    sc_in< sc_lv<16> > length_stream_V_V;
    sc_in< sc_lv<8> > dest_stream_V_V;
    sc_in< sc_lv<8> > src_stream_V_V;


    // Module declarations
    g2N_egress(sc_module_name name);
    SC_HAS_PROCESS(g2N_egress);

    ~g2N_egress();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > output_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_1_reg_222;
    sc_signal< sc_lv<32> > i_reg_125;
    sc_signal< sc_lv<16> > tmp_V_reg_216;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > tmp_1_fu_170_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > i_3_fu_176_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > tmp_last_V_fu_200_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_236;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_lv<64> > tmp_2_fu_182_p1;
    sc_signal< sc_lv<73> > tmp_9_fu_154_p5;
    sc_signal< sc_lv<73> > tmp_16_fu_206_p4;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<13> > tmp_fu_136_p1;
    sc_signal< sc_lv<72> > tmp_5_fu_140_p6;
    sc_signal< sc_lv<32> > tmp_s_fu_167_p1;
    sc_signal< sc_lv<17> > lhs_V_cast_fu_187_p1;
    sc_signal< sc_lv<17> > r_V_fu_190_p2;
    sc_signal< sc_lv<32> > tmp_3_cast_fu_196_p1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<40> ap_const_lv40_FF00000000;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<73> ap_const_lv73_0;
    static const sc_lv<32> ap_const_lv32_47;
    static const sc_lv<17> ap_const_lv17_1FFFF;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_buffer_storage_V_address0();
    void thread_buffer_storage_V_ce0();
    void thread_i_3_fu_176_p2();
    void thread_lhs_V_cast_fu_187_p1();
    void thread_output_V_blk_n();
    void thread_output_V_din();
    void thread_output_V_write();
    void thread_r_V_fu_190_p2();
    void thread_tmp_16_fu_206_p4();
    void thread_tmp_1_fu_170_p2();
    void thread_tmp_2_fu_182_p1();
    void thread_tmp_3_cast_fu_196_p1();
    void thread_tmp_5_fu_140_p6();
    void thread_tmp_9_fu_154_p5();
    void thread_tmp_fu_136_p1();
    void thread_tmp_last_V_fu_200_p2();
    void thread_tmp_s_fu_167_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif