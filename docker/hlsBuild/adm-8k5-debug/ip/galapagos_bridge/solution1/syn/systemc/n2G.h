// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _n2G_HH_
#define _n2G_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct n2G : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<73> > input_V_dout;
    sc_in< sc_logic > input_V_empty_n;
    sc_out< sc_logic > input_V_read;
    sc_out< sc_lv<89> > output_V_din;
    sc_in< sc_logic > output_V_full_n;
    sc_out< sc_logic > output_V_write;


    // Module declarations
    n2G(sc_module_name name);
    SC_HAS_PROCESS(n2G);

    ~n2G();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > input_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_1_fu_144_p3;
    sc_signal< sc_logic > output_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > tmp_1_reg_200;
    sc_signal< sc_lv<10> > i_reg_113;
    sc_signal< sc_lv<8> > tmp_id_V_reg_190;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<8> > tmp_dest_V_reg_195;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<10> > i_1_fu_152_p2;
    sc_signal< sc_lv<64> > tmp_data_V_fu_158_p1;
    sc_signal< sc_lv<64> > tmp_data_V_reg_209;
    sc_signal< sc_lv<8> > tmp_keep_V_reg_214;
    sc_signal< sc_lv<1> > tmp_last_V_fu_172_p3;
    sc_signal< sc_lv<1> > tmp_last_V_reg_219;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< bool > ap_predicate_tran3to4_state2;
    sc_signal< bool > ap_block_pp0_stage0_01001;
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
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_47;
    static const sc_lv<32> ap_const_lv32_48;
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
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_tran3to4_state2();
    void thread_ap_ready();
    void thread_i_1_fu_152_p2();
    void thread_input_V_blk_n();
    void thread_input_V_read();
    void thread_output_V_blk_n();
    void thread_output_V_din();
    void thread_output_V_write();
    void thread_tmp_1_fu_144_p3();
    void thread_tmp_data_V_fu_158_p1();
    void thread_tmp_last_V_fu_172_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif