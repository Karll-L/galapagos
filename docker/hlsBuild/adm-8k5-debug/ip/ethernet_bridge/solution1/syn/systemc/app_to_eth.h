// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _app_to_eth_HH_
#define _app_to_eth_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct app_to_eth : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<81> > from_app_V_dout;
    sc_in< sc_logic > from_app_V_empty_n;
    sc_out< sc_logic > from_app_V_read;
    sc_in< sc_lv<48> > src_mac_address_V_dout;
    sc_in< sc_logic > src_mac_address_V_empty_n;
    sc_out< sc_logic > src_mac_address_V_read;
    sc_out< sc_lv<73> > to_eth_V_din;
    sc_in< sc_logic > to_eth_V_full_n;
    sc_out< sc_logic > to_eth_V_write;
    sc_out< sc_lv<8> > mac_table_V_address0;
    sc_out< sc_logic > mac_table_V_ce0;
    sc_in< sc_lv<48> > mac_table_V_q0;


    // Module declarations
    app_to_eth(sc_module_name name);
    SC_HAS_PROCESS(app_to_eth);

    ~app_to_eth();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_lv<3> > state_V_load_load_fu_205_p1;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_116_p3;
    sc_signal< bool > ap_predicate_op7_read_state1;
    sc_signal< bool > ap_predicate_op23_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<3> > state_V_load_reg_496;
    sc_signal< sc_lv<1> > tmp_4_reg_505;
    sc_signal< bool > ap_predicate_op48_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<96> > eth_dst_src_V;
    sc_signal< sc_lv<3> > state_V;
    sc_signal< sc_lv<1> > app_packet_in_last_V;
    sc_signal< sc_lv<48> > dest_mac_address_V;
    sc_signal< sc_lv<8> > app_packet_in_tkeep_s;
    sc_signal< sc_lv<64> > app_packet_in_data_V;
    sc_signal< sc_lv<8> > app_packet_in_tdest_s;
    sc_signal< sc_logic > from_app_V_blk_n;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > to_eth_V_blk_n;
    sc_signal< sc_logic > src_mac_address_V_blk_n;
    sc_signal< sc_lv<8> > reg_195;
    sc_signal< sc_lv<1> > tmp_last_V_reg_500;
    sc_signal< sc_lv<65> > tmp_19_fu_223_p1;
    sc_signal< sc_lv<65> > tmp_19_reg_509;
    sc_signal< sc_lv<1> > tmp_reg_514;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<64> > tmp_i_fu_277_p1;
    sc_signal< sc_lv<73> > tmp_518_fu_300_p3;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<73> > tmp_3_2_fu_312_p4;
    sc_signal< sc_lv<73> > tmp_2_2_fu_360_p8;
    sc_signal< sc_lv<73> > tmp_1_2_fu_467_p10;
    sc_signal< sc_lv<96> > p_Result_s_fu_379_p3;
    sc_signal< sc_lv<3> > storemerge_i_fu_227_p3;
    sc_signal< sc_lv<3> > storemerge3_i_fu_241_p3;
    sc_signal< sc_lv<1> > grp_fu_155_p3;
    sc_signal< sc_lv<64> > tmp_data_V_1_fu_213_p1;
    sc_signal< sc_lv<64> > tmp_15_fu_267_p1;
    sc_signal< sc_lv<8> > grp_fu_169_p4;
    sc_signal< sc_lv<8> > tmp_14_fu_336_p1;
    sc_signal< sc_lv<8> > tmp_10_fu_350_p4;
    sc_signal< sc_lv<8> > tmp_9_fu_340_p4;
    sc_signal< sc_lv<8> > tmp_8_fu_326_p4;
    sc_signal< sc_lv<8> > tmp_s_fu_393_p4;
    sc_signal< sc_lv<8> > tmp_2_fu_413_p4;
    sc_signal< sc_lv<8> > tmp_13_fu_423_p1;
    sc_signal< sc_lv<8> > tmp_6_fu_447_p4;
    sc_signal< sc_lv<8> > tmp_3_fu_427_p4;
    sc_signal< sc_lv<8> > tmp_7_fu_457_p4;
    sc_signal< sc_lv<8> > tmp_5_fu_437_p4;
    sc_signal< sc_lv<8> > tmp_1_fu_403_p4;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_100;
    sc_signal< bool > ap_condition_177;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<32> ap_const_lv32_49;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<17> ap_const_lv17_1FE00;
    static const sc_lv<16> ap_const_lv16_74;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<9> ap_const_lv9_1FE;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_condition_100();
    void thread_ap_condition_177();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to0();
    void thread_ap_predicate_op23_read_state1();
    void thread_ap_predicate_op48_write_state2();
    void thread_ap_predicate_op7_read_state1();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_from_app_V_blk_n();
    void thread_from_app_V_read();
    void thread_grp_fu_155_p3();
    void thread_grp_fu_169_p4();
    void thread_grp_nbreadreq_fu_116_p3();
    void thread_mac_table_V_address0();
    void thread_mac_table_V_ce0();
    void thread_p_Result_s_fu_379_p3();
    void thread_src_mac_address_V_blk_n();
    void thread_src_mac_address_V_read();
    void thread_state_V_load_load_fu_205_p1();
    void thread_storemerge3_i_fu_241_p3();
    void thread_storemerge_i_fu_227_p3();
    void thread_tmp_10_fu_350_p4();
    void thread_tmp_13_fu_423_p1();
    void thread_tmp_14_fu_336_p1();
    void thread_tmp_15_fu_267_p1();
    void thread_tmp_19_fu_223_p1();
    void thread_tmp_1_2_fu_467_p10();
    void thread_tmp_1_fu_403_p4();
    void thread_tmp_2_2_fu_360_p8();
    void thread_tmp_2_fu_413_p4();
    void thread_tmp_3_2_fu_312_p4();
    void thread_tmp_3_fu_427_p4();
    void thread_tmp_518_fu_300_p3();
    void thread_tmp_5_fu_437_p4();
    void thread_tmp_6_fu_447_p4();
    void thread_tmp_7_fu_457_p4();
    void thread_tmp_8_fu_326_p4();
    void thread_tmp_9_fu_340_p4();
    void thread_tmp_data_V_1_fu_213_p1();
    void thread_tmp_i_fu_277_p1();
    void thread_tmp_s_fu_393_p4();
    void thread_to_eth_V_blk_n();
    void thread_to_eth_V_din();
    void thread_to_eth_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif